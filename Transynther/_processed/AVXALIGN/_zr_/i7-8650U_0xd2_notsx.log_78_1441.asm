.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15fbb, %r11
nop
nop
nop
cmp $15352, %rcx
mov (%r11), %bp
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x7f62, %rsi
lea addresses_WT_ht+0x1009c, %rdi
clflush (%rdi)
nop
nop
cmp $61094, %r10
mov $5, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x77dc, %r11
nop
nop
nop
xor $3408, %r13
mov (%r11), %rcx
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x1c287, %r13
clflush (%r13)
nop
cmp $53813, %r11
mov (%r13), %edi
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xfd5c, %rsi
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
xor $65112, %r10
lea addresses_UC_ht+0xd11c, %rdi
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x6c24, %rbp
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xebdc, %r10
nop
nop
xor $40363, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1efdc, %rsi
lea addresses_UC_ht+0x129dc, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $30, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_WT+0x113dc, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_UC+0x578c, %rax
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
and $27212, %r14

// Load
lea addresses_US+0x1ddb2, %rax
nop
nop
nop
nop
nop
xor $33705, %r15
mov (%rax), %rbp
nop
nop
nop
add $54279, %r14

// Load
lea addresses_UC+0x1e3dc, %rbx
nop
nop
nop
nop
dec %r8
movb (%rbx), %r15b
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_D+0x127dc, %r15
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r15)
nop
inc %r8

// Store
mov $0xadc, %rax
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%rax)
nop
nop
nop
nop
add $33760, %rax

// Faulty Load
lea addresses_WT+0x113dc, %r8
nop
nop
nop
cmp $39127, %r15
vmovaps (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 78}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
