.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5f6, %rdi
nop
nop
nop
nop
cmp $290, %rax
mov (%rdi), %cx
nop
nop
cmp $51020, %r10
lea addresses_normal_ht+0x1e941, %rcx
add %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x11bc5, %r11
nop
nop
nop
nop
and %rbx, %rbx
mov (%r11), %eax
nop
and $51865, %r10
lea addresses_WT_ht+0x7caf, %rcx
nop
nop
nop
nop
nop
inc %r15
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
sub $11373, %r10
lea addresses_WC_ht+0x1b7c9, %rax
clflush (%rax)
inc %rcx
mov (%rax), %rbx
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x17289, %rsi
lea addresses_A_ht+0x3b7d, %rdi
nop
nop
nop
nop
and $34083, %rbx
mov $122, %rcx
rep movsq
nop
nop
nop
nop
and $51867, %rdi
lea addresses_UC_ht+0x8e49, %rbx
nop
nop
nop
nop
inc %r10
movb (%rbx), %r11b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x133c9, %rsi
lea addresses_UC_ht+0xc86f, %rdi
nop
and %rbx, %rbx
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x8dc9, %rax
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
cmp $59198, %r15
lea addresses_normal_ht+0x5ba9, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x91e9, %rcx
clflush (%rcx)
nop
nop
nop
cmp $64994, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xc5a9, %rcx
nop
nop
nop
add $15253, %r10
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
add $40315, %rcx
lea addresses_UC_ht+0x2209, %rcx
sub %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rcx)
xor $43434, %rcx
lea addresses_WC_ht+0xb4b1, %rax
nop
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rax)
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x99c9, %rsi
nop
nop
sub $54237, %r15
mov (%rsi), %edi
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WC+0x9fc9, %rbx
add $39141, %rbp
movb $0x51, (%rbx)
xor %r13, %r13

// Store
lea addresses_WT+0x1a7e9, %rbx
nop
nop
nop
nop
sub $29158, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
cmp $41579, %r13

// Store
mov $0x259, %r13
nop
nop
nop
and $48704, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add $32770, %r14

// Faulty Load
lea addresses_WT+0x1dfc9, %rdx
nop
nop
dec %r15
mov (%rdx), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
