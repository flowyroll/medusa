.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1178f, %r11
nop
nop
nop
nop
nop
inc %r12
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
cmp $63080, %r12
lea addresses_A_ht+0x1778f, %r9
nop
nop
nop
nop
nop
xor $11513, %rdi
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
cmp $29436, %r9
lea addresses_A_ht+0x14e4f, %rsi
lea addresses_WT_ht+0x264f, %rdi
cmp %rax, %rax
mov $5, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1924f, %r13
nop
nop
nop
nop
xor %rdi, %rdi
movups (%r13), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1544f, %r9
sub $50896, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x1c24f, %r11
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r11)
and $4424, %rcx
lea addresses_WC_ht+0x8967, %r13
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r13), %rcx
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x6eef, %rcx
nop
nop
dec %rsi
movl $0x61626364, (%rcx)
cmp $51837, %rcx
lea addresses_WT_ht+0xa9ef, %rsi
lea addresses_normal_ht+0x1404f, %rdi
nop
nop
nop
sub %r12, %r12
mov $52, %rcx
rep movsl
nop
nop
xor $34063, %rax
lea addresses_WC_ht+0x945f, %rax
clflush (%rax)
sub %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %rax
vmovntdq %ymm7, (%rax)
nop
xor $31982, %rsi
lea addresses_A_ht+0x1844f, %r12
nop
nop
nop
nop
nop
sub $13279, %r11
mov (%r12), %rcx
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xc64f, %rax
nop
and %r11, %r11
mov (%rax), %r12d
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_normal+0xb53f, %r9
nop
nop
nop
nop
add $34669, %rcx
movl $0x51525354, (%r9)
nop
nop
sub $20657, %rbx

// Faulty Load
lea addresses_US+0x1024f, %r11
nop
nop
nop
and %rcx, %rcx
mov (%r11), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'00': 1}
00
*/
