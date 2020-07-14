.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xac9b, %rsi
lea addresses_UC_ht+0x1aa20, %rdi
nop
sub $55349, %rax
mov $88, %rcx
rep movsl
sub %r13, %r13
lea addresses_UC_ht+0xc2f4, %r12
nop
nop
nop
add %r11, %r11
mov (%r12), %rdi
nop
nop
inc %rax
lea addresses_WC_ht+0x1a310, %rsi
lea addresses_normal_ht+0xdb90, %rdi
nop
nop
nop
nop
nop
cmp $28595, %r13
mov $125, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x6390, %rcx
nop
nop
nop
nop
xor $13959, %r11
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
and $57278, %rcx
lea addresses_UC_ht+0x6c98, %r12
nop
nop
sub $1924, %rdi
movw $0x6162, (%r12)
nop
sub %rdi, %rdi
lea addresses_A_ht+0x158d0, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
add $30421, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdx

// Store
lea addresses_RW+0x13cbc, %r10
nop
nop
nop
nop
sub $52435, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_A+0xa40, %r14
nop
nop
xor %rax, %rax
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
xor $63996, %r14

// Faulty Load
lea addresses_normal+0xdb90, %rax
clflush (%rax)
nop
nop
nop
sub $43439, %r12
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'34': 8}
34 34 34 34 34 34 34 34
*/
