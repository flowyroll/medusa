.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x79fd, %rsi
lea addresses_normal_ht+0xb63d, %rdi
dec %r11
mov $96, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1ccfd, %rsi
lea addresses_A_ht+0x19b36, %rdi
nop
xor %rax, %rax
mov $97, %rcx
rep movsw
nop
sub $22785, %rbx
lea addresses_A_ht+0x819d, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $13907, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
and $34793, %rsi
lea addresses_A_ht+0x237d, %rsi
lea addresses_normal_ht+0x1cd77, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $109, %rcx
rep movsw
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x1cce2, %rsi
lea addresses_A_ht+0x21fd, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $93, %rcx
rep movsw
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xa4fd, %rsi
lea addresses_WC_ht+0x194fd, %rdi
nop
nop
inc %r8
mov $127, %rcx
rep movsb
sub $29569, %r11
lea addresses_D_ht+0x980d, %rsi
nop
xor %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm5, (%rsi)
nop
xor %rbx, %rbx
lea addresses_A_ht+0x288, %r9
nop
nop
and $17099, %rax
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
add $59032, %rdi
lea addresses_A_ht+0x1e8fd, %r9
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x18fd, %rsi
lea addresses_UC_ht+0x58fd, %rdi
nop
nop
dec %rax
mov $92, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $28743, %r8
lea addresses_A_ht+0x1b6e5, %rsi
lea addresses_normal_ht+0x1553d, %rdi
nop
sub $56703, %r8
mov $57, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xe05d, %rsi
lea addresses_WC_ht+0x26fd, %rdi
clflush (%rsi)
nop
sub $18861, %rax
mov $72, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rdx

// Faulty Load
lea addresses_RW+0x5cfd, %r14
nop
nop
nop
nop
cmp $18511, %r12
vmovaps (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'47': 6, 'ad': 1, 'de': 1, '44': 271, '38': 1, '46': 2, '79': 1, '49': 9488, '63': 1, 'ed': 1, '19': 1, '58': 1, '45': 12003, '78': 1, 'b8': 1, 'db': 1, '00': 48}
45 49 45 49 45 49 49 45 45 49 45 45 45 45 45 45 49 45 49 45 49 44 45 45 49 45 45 45 49 49 45 45 49 45 49 49 45 45 45 49 46 49 49 49 45 49 49 45 49 45 45 45 45 45 45 49 45 45 44 49 49 45 45 45 49 45 49 49 44 45 49 45 49 45 49 49 45 45 49 45 45 45 45 45 49 49 45 49 45 45 45 45 45 49 49 49 49 45 45 45 45 49 45 45 49 49 45 49 45 49 49 49 49 49 49 49 45 45 45 49 45 45 45 49 49 45 49 45 49 49 49 49 45 49 49 45 49 45 49 45 45 49 45 49 45 45 49 45 49 49 49 49 45 49 45 49 49 45 44 45 49 49 45 49 49 45 45 45 45 49 45 49 45 49 45 45 49 45 45 49 45 49 45 45 45 49 45 45 49 49 45 45 45 45 45 49 45 49 45 45 49 45 45 49 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 49 45 45 45 49 49 45 49 49 45 45 45 49 49 49 45 49 45 45 49 49 45 45 45 45 45 45 45 45 49 49 45 49 45 44 45 49 49 49 45 45 49 45 49 49 49 49 45 49 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 45 45 45 45 45 49 45 45 45 49 49 49 45 49 45 45 45 49 45 45 45 49 49 45 45 49 45 49 49 49 49 49 45 45 45 49 45 45 49 49 45 45 45 49 45 49 49 49 49 45 49 49 45 49 49 45 49 49 49 49 45 45 49 45 49 45 45 45 49 49 45 45 49 45 49 45 49 45 49 49 45 45 49 49 45 45 49 45 49 49 45 45 49 49 45 45 49 45 49 49 45 49 45 49 49 49 49 45 49 45 45 49 45 49 45 45 45 45 49 49 49 45 45 49 49 49 45 49 45 45 45 45 49 49 44 45 49 49 49 45 49 49 45 45 49 49 45 45 45 49 45 45 45 45 49 45 49 45 45 45 45 45 49 49 49 49 49 49 45 45 45 45 19 45 49 45 49 49 45 45 49 49 45 49 49 45 45 45 45 45 49 49 45 45 45 45 45 45 44 49 00 49 49 49 45 49 45 49 45 45 49 45 44 49 45 45 49 49 49 45 49 45 45 45 49 44 49 45 49 49 45 45 45 45 45 45 44 45 45 49 49 45 45 45 49 45 49 49 49 49 49 49 49 45 49 49 49 45 49 49 45 49 49 49 49 45 49 45 49 45 45 45 49 45 45 49 45 45 49 49 45 45 45 49 49 49 45 45 45 45 45 49 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 49 49 49 45 45 45 45 45 49 49 45 45 49 49 49 49 49 45 45 45 49 45 49 49 49 45 45 49 49 45 45 45 49 49 49 45 49 45 49 45 45 49 49 49 49 49 45 45 45 49 49 49 49 45 49 45 49 49 49 45 45 49 45 49 45 45 45 45 45 49 45 45 49 49 49 49 45 45 45 49 49 45 45 45 45 45 45 49 49 49 45 45 49 49 49 45 45 49 45 49 49 45 45 49 49 45 45 49 45 45 45 49 45 49 49 45 49 45 45 45 45 49 45 45 49 49 45 49 45 45 49 49 49 45 49 45 45 45 45 45 45 45 49 49 49 49 49 45 45 49 45 45 45 45 45 45 45 45 49 49 49 45 45 49 45 45 45 45 49 45 45 45 45 45 45 49 49 45 49 45 45 49 45 49 49 49 45 49 49 49 45 45 49 45 45 45 49 45 49 49 45 49 49 49 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 49 49 45 45 49 45 45 49 45 45 45 45 45 45 45 45 49 45 49 49 49 49 45 45 45 45 45 45 49 45 45 49 49 45 49 49 49 49 45 45 45 45 49 49 49 45 49 45 45 49 45 49 49 49 45 45 49 49 45 45 45 49 49 49 45 45 45 49 45 49 49 49 45 49 49 49 45 45 49 45 49 49 45 45 45 49 45 45 45 49 45 49 45 45 49 49 49 49 45 45 45 45 49 45 45 49 45 49 45 49 45 49 49 45 49 49 49 45 49 49 45 49 49 45 45 49 45 49 49 45 45 49 45 49 45 45 49 49 49 49 45 49 49 49 45 49 45 45 45 45 45 49 49 45 49 49 45 45 49 49 45 45 45 45 49 49 49 45 45 49 45 45 45 45 45 45 49 49 45 45
*/
