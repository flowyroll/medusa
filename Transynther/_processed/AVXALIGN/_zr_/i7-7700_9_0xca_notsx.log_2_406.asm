.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc019, %rdx
nop
and $7718, %r8
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xdc39, %rcx
xor $20287, %rdi
mov (%rcx), %rax
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x5939, %rsi
lea addresses_WT_ht+0x14139, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r8
mov $125, %rcx
rep movsq
nop
add %rbx, %rbx
lea addresses_WT_ht+0x19841, %rsi
lea addresses_WT_ht+0x2939, %rdi
clflush (%rdi)
nop
nop
and $32273, %r9
mov $111, %rcx
rep movsw
nop
nop
cmp $50246, %rdi
lea addresses_A_ht+0x5439, %rsi
lea addresses_D_ht+0x7939, %rdi
nop
nop
nop
sub $33151, %rbx
mov $36, %rcx
rep movsw
nop
nop
nop
nop
and $6138, %rdi
lea addresses_WT_ht+0x1d4f1, %rbx
nop
nop
nop
xor $18149, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x7339, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
xor $7509, %rdx
lea addresses_UC_ht+0xd6b9, %rdx
nop
nop
cmp $6216, %rax
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x14081, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x2439, %rsi
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
xor $22989, %rax
lea addresses_A_ht+0x182bd, %rsi
lea addresses_UC_ht+0x1b79, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $39294, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_PSE+0x11f79, %rdi
nop
nop
nop
nop
add $47878, %r8
movb $0x51, (%rdi)
nop
inc %r13

// Load
lea addresses_normal+0x8139, %r11
nop
nop
nop
xor $8864, %r13
movb (%r11), %r14b
nop
nop
nop
and $36986, %r14

// Store
lea addresses_A+0x956f, %r9
nop
nop
nop
nop
nop
sub $39410, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
xor $14912, %r13

// Store
lea addresses_D+0x17939, %r11
clflush (%r11)
nop
inc %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r11)
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x139, %r11
nop
nop
nop
nop
inc %r14
mov (%r11), %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 2}
00 00
*/
