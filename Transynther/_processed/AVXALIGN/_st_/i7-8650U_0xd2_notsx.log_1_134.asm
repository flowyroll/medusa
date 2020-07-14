.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a855, %rdi
nop
nop
add %r8, %r8
movw $0x6162, (%rdi)
sub $22757, %rsi
lea addresses_D_ht+0xb255, %rsi
lea addresses_WC_ht+0x18fe5, %rdi
clflush (%rsi)
nop
xor %r9, %r9
mov $106, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xc155, %rsi
lea addresses_WC_ht+0x19255, %rdi
nop
nop
nop
nop
nop
cmp $46589, %rax
mov $74, %rcx
rep movsl
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0xbfcd, %r10
add %rdi, %rdi
movw $0x6162, (%r10)
nop
nop
sub $6493, %rax
lea addresses_A_ht+0x1e255, %r10
nop
nop
nop
nop
nop
add $7881, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x10acd, %r9
nop
nop
sub $38082, %r10
movw $0x6162, (%r9)
nop
nop
nop
and $12111, %r9
lea addresses_WT_ht+0xe855, %r10
clflush (%r10)
nop
add %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r10)
add %r10, %r10
lea addresses_WC_ht+0x6255, %rdi
nop
nop
nop
cmp $51424, %r10
movl $0x61626364, (%rdi)
and %r8, %r8
lea addresses_D_ht+0x6855, %r9
nop
nop
xor %r8, %r8
movb (%r9), %al
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x7e55, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rsi, %rsi
movb (%rcx), %al
nop
nop
cmp $42838, %r10
lea addresses_normal_ht+0xb835, %rsi
lea addresses_WC_ht+0x1c55, %rdi
nop
nop
add %r12, %r12
mov $55, %rcx
rep movsw
nop
nop
nop
nop
xor $28828, %r8
lea addresses_D_ht+0x283f, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
dec %rcx
lea addresses_A_ht+0x57f7, %rsi
lea addresses_WC_ht+0x13255, %rdi
xor $29105, %rax
mov $117, %rcx
rep movsl
nop
nop
nop
nop
cmp $12881, %r10
lea addresses_WT_ht+0x14a59, %rdi
nop
nop
add %rcx, %rcx
movb (%rdi), %r10b
add $25862, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0x10a05, %r10
nop
nop
nop
inc %r14
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
mov $0x24f2e400000008c5, %rdx
nop
xor $52600, %r8
movw $0x5152, (%rdx)
dec %r10

// Load
lea addresses_A+0x1455, %rsi
nop
nop
nop
sub $36614, %r9
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0x9775, %rax
nop
nop
nop
nop
xor %r9, %r9
movb $0x51, (%rax)
nop
nop
cmp %r10, %r10

// Load
mov $0x455, %r9
nop
nop
add %r14, %r14
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_WT+0x17055, %r10
nop
nop
nop
nop
nop
add $58983, %rax
movb (%r10), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 1}
39
*/
