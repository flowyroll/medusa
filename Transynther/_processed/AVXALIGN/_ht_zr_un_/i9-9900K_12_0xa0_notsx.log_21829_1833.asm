.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12bf7, %rsi
lea addresses_WC_ht+0x1d1f7, %rdi
nop
nop
sub $44934, %r9
mov $3, %rcx
rep movsq
cmp $51222, %rbx
lea addresses_UC_ht+0x12f77, %rsi
lea addresses_WT_ht+0x15ef7, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $28, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x7cf, %rsi
lea addresses_normal_ht+0xb5b7, %rdi
nop
cmp %r10, %r10
mov $118, %rcx
rep movsw
nop
xor %rax, %rax
lea addresses_A_ht+0x13407, %rsi
lea addresses_WT_ht+0x9ee3, %rdi
clflush (%rsi)
and $51103, %r14
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xcbcb, %rsi
nop
nop
nop
nop
nop
xor $2866, %rax
mov (%rsi), %rbx
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x7ef7, %rbx
add %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbx)
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x2f7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r10
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
and $39329, %r14
lea addresses_WT_ht+0x1e539, %rbx
sub $50205, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Store
lea addresses_A+0x18dbf, %r11
nop
and %rbp, %rbp
movb $0x51, (%r11)
and $36534, %rbx

// Faulty Load
lea addresses_D+0x1f6f7, %r12
nop
add %r8, %r8
vmovaps (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'47': 7353, '7c': 2, 'de': 1, '45': 14200, 'e2': 1, 'd6': 1, '7b': 1, '64': 1, '00': 269}
45 45 45 45 45 45 45 47 47 47 45 45 45 45 45 45 47 45 45 45 45 47 47 45 45 45 45 47 47 45 45 47 45 47 45 45 45 47 47 45 45 47 47 47 45 45 45 47 45 47 45 45 45 45 47 45 45 45 45 47 47 47 45 47 47 47 45 45 47 47 47 45 45 47 45 47 47 45 45 47 47 47 45 45 45 47 45 47 45 45 45 45 47 45 47 45 47 45 47 45 45 47 45 45 45 45 47 47 45 45 45 47 45 45 45 45 47 47 47 45 45 47 47 45 45 47 47 47 45 45 45 45 45 45 47 45 45 45 47 45 45 45 45 47 47 47 45 45 45 47 45 45 45 45 45 45 47 47 47 45 45 47 47 47 47 45 45 45 47 45 45 47 45 45 45 45 47 45 47 45 45 47 47 47 45 45 47 47 47 45 45 45 47 47 45 45 45 47 47 47 45 45 45 47 45 45 45 45 45 47 47 47 47 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 47 47 45 45 45 47 47 47 45 45 47 47 47 45 47 47 45 45 45 45 45 47 45 45 45 45 47 45 45 47 47 47 45 45 45 45 47 45 45 45 45 45 45 47 45 45 45 45 47 45 45 45 45 45 47 47 47 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 47 47 47 45 45 45 45 47 45 45 45 45 47 47 45 45 47 47 47 45 45 47 47 45 45 45 47 45 45 47 45 45 45 47 45 45 45 45 45 45 47 45 47 45 45 45 45 47 47 45 45 45 47 47 45 45 45 45 47 45 45 45 45 45 47 45 45 45 45 47 47 47 45 45 47 45 45 45 45 47 45 45 45 45 47 45 45 45 45 45 47 47 45 45 45 47 45 45 45 47 45 45 45 45 45 47 45 45 45 47 47 47 45 45 47 45 47 45 45 47 47 47 45 45 47 47 47 45 45 45 47 00 45 45 45 47 45 45 45 45 47 47 45 45 45 47 47 47 45 45 47 45 45 45 45 47 00 47 45 45 45 45 47 45 45 45 45 47 45 45 45 45 45 47 45 45 45 47 47 00 45 45 45 47 45 45 45 45 45 47 47 45 45 45 47 47 45 45 45 45 47 45 47 45 45 45 45 47 45 45 45 47 47 45 45 45 47 47 45 45 45 45 47 47 45 45 45 45 45 47 45 45 45 45 45 45 45 47 45 47 45 47 47 45 45 47 47 47 45 45 45 45 45 45 47 45 45 45 45 47 45 45 45 45 47 45 45 45 47 45 47 45 45 45 47 45 47 47 45 45 45 45 45 47 47 45 45 47 47 47 45 45 47 47 47 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 47 47 45 47 47 45 45 45 47 45 45 45 47 47 47 45 45 47 47 47 45 45 45 47 47 45 45 45 45 47 47 45 45 45 45 45 47 45 45 45 45 47 47 47 45 45 45 45 45 47 45 45 47 45 47 45 45 47 45 47 45 45 45 45 47 47 47 45 45 45 47 45 45 45 47 47 45 47 47 47 45 45 45 47 45 45 47 45 45 45 45 47 45 47 45 45 47 45 45 45 45 47 47 47 45 45 45 47 47 45 45 47 47 47 45 45 45 45 45 45 47 45 45 45 45 47 45 47 45 45 47 45 45 45 45 47 45 45 45 45 47 47 47 45 45 47 45 45 45 45 47 45 47 47 45 45 45 45 47 45 45 45 45 47 45 45 45 47 47 47 45 45 45 47 47 45 45 45 45 45 45 45 45 45 45 47 45 45 45 47 47 45 45 45 45 45 45 45 45 47 00 45 45 45 45 47 47 45 47 47 45 45 45 47 45 45 45 47 45 45 45 45 45 47 47 47 45 45 45 47 47 45 45 47 47 45 45 45 45 45 47 45 45 45 45 45 45 45 47 45 47 45 45 45 45 47 45 45 45 47 45 00 45 45 45 45 47 45 45 45 47 45 45 45 45 47 47 45 45 47 45 45 45 45 47 45 45 45 47 45 45 45 47 45 45 45 47 47 47 45 45 45 45 45 45 45 45 45 47 45 45 47 45 47 45 45 47 47 47 45 45 45 47 45 45 45 45 45 45 47 45 47 45 45 45 45 47 45 47 45 45 45 47 45 47 47 45 45 45 47 45 45 45 45 47 47 45 45 45 47 47 45 45 45 47 45 45 45 47 45 45 45 47 47 45 45 45 47 47 47 47 45 45 47 47 45 45
*/
