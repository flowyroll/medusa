.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14c3, %rsi
lea addresses_normal_ht+0x13a23, %rdi
nop
sub $51934, %rax
mov $109, %rcx
rep movsb
sub %r9, %r9
lea addresses_WT_ht+0x8a23, %rsi
lea addresses_D_ht+0x19783, %rdi
sub $63008, %r13
mov $39, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x186d1, %r9
nop
nop
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%r9)
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x19923, %r13
nop
sub $58572, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
nop
nop
sub $42684, %r9
lea addresses_WT_ht+0x6823, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movb (%rdi), %cl
nop
nop
nop
xor $57273, %rsi
lea addresses_normal_ht+0x1823, %rsi
lea addresses_normal_ht+0x10f23, %rdi
nop
nop
sub $41600, %r9
mov $92, %rcx
rep movsq
dec %rcx
lea addresses_normal_ht+0x192a3, %r9
nop
nop
nop
xor $10448, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
dec %r11
lea addresses_D_ht+0x22e3, %rcx
nop
nop
nop
sub %r9, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xa023, %rax
clflush (%rax)
nop
nop
nop
nop
xor $36055, %rsi
movl $0x61626364, (%rax)
nop
and $65469, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rdi
push %rdx

// Store
mov $0x426, %r10
nop
nop
nop
nop
nop
and $50664, %rdx
movl $0x51525354, (%r10)
and $4818, %rdi

// Store
lea addresses_WT+0x1a23, %r10
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x7353, %rdx
nop
nop
nop
nop
xor $1801, %r14
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0xd8a3, %r10
nop
nop
and $50502, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r10)
nop
add %r10, %r10

// Store
lea addresses_WT+0x1a23, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %r14, %r14
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
cmp $23759, %r10

// Store
lea addresses_PSE+0x2ee3, %r13
sub %r12, %r12
movw $0x5152, (%r13)
nop
nop
nop
nop
and $33082, %r10

// Load
lea addresses_UC+0xc233, %rdi
nop
xor $17441, %r14
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
sub $65451, %r14

// Store
lea addresses_normal+0x183c3, %r14
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r14)
sub %r12, %r12

// Faulty Load
lea addresses_WT+0x1a23, %rdi
nop
nop
nop
nop
nop
cmp $18988, %r10
movntdqa (%rdi), %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
