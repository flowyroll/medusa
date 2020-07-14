.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xff70, %rsi
nop
nop
nop
nop
nop
cmp $61699, %r15
mov (%rsi), %rdi
nop
lfence
lea addresses_A_ht+0x12c50, %r10
nop
nop
nop
nop
nop
and $48103, %r11
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x12790, %rsi
lea addresses_D_ht+0x8c, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $22, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x17c50, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $31240, %rcx
lea addresses_UC_ht+0x9690, %rcx
nop
nop
nop
nop
cmp %r10, %r10
mov (%rcx), %r15
nop
nop
add $40682, %rcx
lea addresses_D_ht+0x16f28, %rsi
lea addresses_WT_ht+0x16c50, %rdi
clflush (%rdi)
nop
add %r15, %r15
mov $4, %rcx
rep movsw
nop
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x6250, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_US+0x17c50, %rbx
nop
nop
nop
xor $56522, %rax
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
and $23247, %r9

// Faulty Load
lea addresses_US+0x17c50, %rdi
nop
nop
nop
nop
and $9032, %r10
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
