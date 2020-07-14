.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d617, %rsi
lea addresses_normal_ht+0xb417, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $14, %rcx
rep movsw
nop
nop
nop
nop
nop
add $56969, %rbp
lea addresses_D_ht+0x90b3, %r11
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r11), %rdi
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1bb9f, %rsi
dec %rbp
mov (%rsi), %r13d
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1c897, %rcx
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
cmp $49962, %rbp
lea addresses_UC_ht+0x167b7, %r13
nop
add %rcx, %rcx
mov (%r13), %rsi
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x17d33, %rbp
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
nop
and $2927, %rcx
lea addresses_A_ht+0xc19a, %r13
nop
nop
xor $17311, %rdi
mov (%r13), %bx
nop
nop
dec %rbp
lea addresses_WT_ht+0x1b54d, %r13
clflush (%r13)
nop
nop
nop
nop
sub $40089, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rdi
push %rdx

// Store
lea addresses_D+0x12117, %rdx
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovaps %ymm3, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_PSE+0x3c17, %r13
nop
nop
and $9468, %r11
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
