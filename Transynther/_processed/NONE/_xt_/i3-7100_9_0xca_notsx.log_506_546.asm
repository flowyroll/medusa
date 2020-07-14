.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7461, %r10
clflush (%r10)
nop
nop
nop
xor $7086, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r10)
nop
nop
sub $49968, %r8
lea addresses_UC_ht+0x11eda, %rsi
lea addresses_D_ht+0x595a, %rdi
nop
nop
nop
nop
add $24803, %rax
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
add $18779, %r14
lea addresses_WC_ht+0x7daa, %rcx
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
and %r14, %r14
lea addresses_WC_ht+0xe99e, %rsi
nop
nop
sub $38824, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x8c5a, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x95a, %rcx
nop
nop
nop
nop
and $40002, %r14
mov (%rcx), %rax
nop
dec %rcx
lea addresses_WT_ht+0xa3be, %r10
nop
inc %r8
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xb1a2, %rsi
lea addresses_WT_ht+0x13dfa, %rdi
xor %r14, %r14
mov $92, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x755a, %rax
nop
nop
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%rax)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1369a, %rsi
lea addresses_UC_ht+0x435a, %rdi
nop
nop
sub %r10, %r10
mov $55, %rcx
rep movsw
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1715a, %r14
xor %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r14)
nop
sub $11316, %rsi
lea addresses_UC_ht+0x815a, %r10
nop
nop
nop
nop
nop
sub $34654, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x19e1e, %rsi
lea addresses_WC_ht+0x13f3c, %rdi
nop
nop
and %r14, %r14
mov $107, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x7f7a, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
nop
sub $60452, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rcx
push %rdx
push %rsi

// Store
mov $0x7b903c0000000b7a, %r9
nop
add $11457, %rdx
movb $0x51, (%r9)
nop
nop
nop
inc %r9

// Load
lea addresses_WT+0x13d5a, %r13
nop
nop
sub %rcx, %rcx
mov (%r13), %esi
and $50619, %rsi

// Faulty Load
lea addresses_PSE+0x895a, %rsi
nop
nop
dec %r14
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 506}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
