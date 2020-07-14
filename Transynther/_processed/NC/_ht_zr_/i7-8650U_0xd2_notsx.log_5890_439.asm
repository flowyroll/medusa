.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x63e3, %rsi
cmp %rbp, %rbp
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x9c03, %rsi
lea addresses_WT_ht+0x1a8ab, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $79, %rcx
rep movsq
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x12e87, %r12
nop
nop
nop
xor $28469, %r13
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rbp
nop
cmp %r15, %r15
lea addresses_WT_ht+0x17703, %rdi
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
inc %r13
lea addresses_normal_ht+0x1b283, %rdi
nop
nop
nop
nop
nop
cmp $1165, %r12
mov (%rdi), %r13w
nop
nop
nop
nop
nop
add $56189, %rcx
lea addresses_WT_ht+0x1ea03, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rcx), %r12b
nop
inc %rsi
lea addresses_WC_ht+0x17403, %rsi
lea addresses_normal_ht+0x1703, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $4, %rcx
rep movsq
inc %rsi
lea addresses_WC_ht+0x166eb, %rsi
lea addresses_D_ht+0xdb03, %rdi
sub %rax, %rax
mov $33, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x19403, %r13
nop
xor $16824, %r15
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
cmp $28450, %rsi
lea addresses_A_ht+0x216b, %rsi
lea addresses_D_ht+0x97b3, %rdi
cmp $62821, %r12
mov $1, %rcx
rep movsb
nop
nop
nop
xor $14385, %rcx
lea addresses_D_ht+0xd003, %rbp
nop
nop
nop
inc %r15
mov (%rbp), %r12
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Load
lea addresses_D+0x1a163, %rdi
nop
nop
and $52162, %r15
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
and %r11, %r11

// Store
lea addresses_D+0x13c31, %r11
nop
nop
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%r11)
cmp $16739, %r11

// Faulty Load
mov $0x2974250000000b03, %rbx
nop
nop
nop
nop
nop
cmp $40419, %r9
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'00': 4310, '45': 870, '44': 332, '48': 243, '47': 135}
00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 44 00 00 00 48 00 00 00 00 00 00 00 00 00 45 45 45 45 00 44 45 45 00 00 45 48 00 48 48 00 44 00 48 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 44 00 45 00 44 00 00 47 00 00 00 00 00 00 00 00 00 00 00 48 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 48 00 00 45 48 00 00 00 00 00 47 00 00 00 00 45 00 44 44 45 00 00 00 00 45 00 00 48 45 00 00 00 00 00 44 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 44 00 00 45 00 00 00 45 44 44 00 00 00 00 00 00 45 48 45 00 00 00 00 00 44 44 45 45 45 45 00 48 47 44 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 44 00 00 44 45 45 00 00 45 00 00 47 00 00 00 47 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 44 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 44 00 00 00 00 00 44 44 45 00 00 00 00 00 00 00 48 00 00 00 00 45 00 00 45 45 00 00 44 00 00 00 00 00 00 45 00 00 00 48 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 44 00 00 00 00 00 45 00 00 00 48 00 00 44 45 00 00 47 00 45 48 45 00 45 45 00 00 00 00 00 44 00 00 00 00 45 45 00 00 45 00 45 44 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 44 00 00 00 00 00 48 00 00 00 00 00 00 45 00 00 45 00 44 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 48 45 00 00 48 45 00 00 00 00 45 45 00 00 00 00 00 44 44 45 00 00 44 44 00 45 00 00 00 47 00 00 00 00 45 44 45 00 00 00 00 00 45 00 00 44 00 00 45 00 00 00 00 00 00 00 48 44 45 00 44 00 00 00 00 00 00 48 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 48 45 00 47 00 00 00 00 45 00 44 44 45 00 44 00 00 45 45 00 00 48 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 00 00 45 00 47 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 45 45 45 00 00 44 44 00 44 47 00 00 00 00 47 48 00 00 00 48 00 00 00 00 00 48 00 00 44 00 00 47 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 44 00 47 00 00 00 45 00 00 00 00 44 00 45 00 00 00 45 00 00 00 00 00 00 48 00 00 00 00 00 00 45 00 44 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 45 45 00 00 47 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 48 00 00 00 00 00 44 44 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 48 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 48 00 45 00 00 44 00 00 00 45 00 00 00 00 00 48 00 00 00 00 45 00 44 44 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 44 00 00 45 00 45 00 00 00 00 45 00 44 00 00 00 00 00 00 00 00 45 44 00 00 45 00 00 45 00 48 00 00 00 00 00 00 00 00 00 45 00 00 00 00 48 00 00 47 00 00 45 00 44 45 45 00 00 00 45 00 00 47 00 00 00 45 00 48 00 00 45 00 48 44 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 45 00 00 00 44 00 00 00 00 00 00 00 47 48 00 48 00 00 00 00 00 00 00 48 00 00
*/
