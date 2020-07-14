.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3711, %r15
nop
xor %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
nop
add $22497, %rdx
lea addresses_WC_ht+0xe7d1, %rsi
lea addresses_WT_ht+0x1d2f1, %rdi
nop
and $57537, %r12
mov $74, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x189bc, %rsi
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
inc %r11
lea addresses_normal_ht+0x1d7b9, %rcx
nop
xor %r12, %r12
movl $0x61626364, (%rcx)
nop
and $28525, %rcx
lea addresses_D_ht+0x8ff1, %rdi
nop
nop
nop
nop
nop
sub $58671, %r11
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x16eb9, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r15w
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xa131, %rsi
lea addresses_normal_ht+0x9e92, %rdi
nop
nop
cmp $33685, %r12
mov $87, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1246e, %rdx
nop
nop
nop
dec %rcx
movb $0x61, (%rdx)
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x8d31, %r12
nop
nop
nop
and $43113, %rdx
mov (%r12), %r15w
inc %rdx
lea addresses_WC_ht+0x14c61, %rdi
add %rcx, %rcx
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_US+0x1bddd, %rdi
nop
nop
nop
inc %rbp
mov (%rdi), %rcx
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0xa931, %rbp
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x18931, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $54216, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
and %r13, %r13

// Store
lea addresses_normal+0x1b351, %r13
nop
nop
nop
inc %rcx
movl $0x51525354, (%r13)
nop
and %rcx, %rcx

// Store
lea addresses_US+0x13c31, %r13
nop
nop
nop
xor $39236, %rdi
movl $0x51525354, (%r13)
nop
add %r13, %r13

// Faulty Load
lea addresses_PSE+0x18931, %rbp
nop
nop
nop
dec %r13
mov (%rbp), %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'58': 644}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
