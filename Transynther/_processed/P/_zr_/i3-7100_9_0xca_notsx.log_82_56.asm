.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x813a, %rsi
lea addresses_WT_ht+0x4bba, %rdi
cmp %r12, %r12
mov $105, %rcx
rep movsw
add $46474, %r12
lea addresses_WC_ht+0x1c92, %rsi
lea addresses_WC_ht+0x1653a, %rdi
xor $14739, %r12
mov $51, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1423a, %r9
nop
nop
nop
nop
sub $61537, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x10c0a, %r12
clflush (%r12)
xor %r10, %r10
movb $0x61, (%r12)
nop
nop
nop
nop
nop
add $24170, %r10
lea addresses_WC_ht+0xbb3a, %r10
sub %rdi, %rdi
movw $0x6162, (%r10)
nop
and %r9, %r9
lea addresses_D_ht+0x1a93a, %rdx
nop
nop
nop
sub $17818, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add $61637, %rcx
lea addresses_D_ht+0x1ef0a, %rsi
lea addresses_normal_ht+0xfd27, %rdi
nop
nop
xor %rax, %rax
mov $90, %rcx
rep movsq
nop
nop
nop
and $33447, %rcx
lea addresses_normal_ht+0x23a, %rax
nop
and %r12, %r12
mov (%rax), %dx
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx

// Faulty Load
mov $0x43a, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov (%rdx), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 82}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
