.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe2d3, %rsi
lea addresses_UC_ht+0x1a63, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $127, %rcx
rep movsw
dec %r15
lea addresses_normal_ht+0x17c43, %r13
nop
nop
dec %rdi
mov (%r13), %r15d
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xed03, %r14
nop
inc %rdi
movl $0x61626364, (%r14)
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x1d643, %rsi
lea addresses_normal_ht+0x1a043, %rdi
and %r14, %r14
mov $18, %rcx
rep movsb
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x32c3, %r14
nop
nop
nop
nop
nop
and $58813, %rsi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
nop
add %r15, %r15
lea addresses_WT_ht+0x16c03, %rdi
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r14d
nop
nop
and $50637, %rsi
lea addresses_UC_ht+0xd043, %r13
nop
nop
sub %rsi, %rsi
mov (%r13), %di
nop
nop
nop
lfence
lea addresses_D_ht+0x92c3, %rsi
lea addresses_UC_ht+0x19543, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $48, %rcx
rep movsq
nop
cmp %r15, %r15
lea addresses_WT_ht+0x8ce1, %r14
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xbe45, %r13
nop
nop
nop
nop
cmp $12068, %rcx
mov (%r13), %esi
nop
cmp $28777, %r13
lea addresses_D_ht+0x160d3, %rsi
nop
nop
nop
nop
add $24129, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
cmp $28591, %r15
lea addresses_UC_ht+0x1e702, %r9
nop
nop
nop
nop
nop
and $28627, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rbx

// Faulty Load
lea addresses_RW+0x1a843, %rbp
add %r15, %r15
movntdqa (%rbp), %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'08': 2, '44': 11872, '00': 913, '49': 1433, '48': 564, '46': 7045}
49 44 46 44 46 44 46 44 46 44 44 44 46 00 44 48 44 46 44 46 44 44 44 46 49 44 00 44 48 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 00 44 49 44 00 44 00 44 48 44 46 44 46 44 46 44 44 44 46 49 44 49 44 46 44 46 49 44 48 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 46 00 44 49 44 48 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 44 49 44 48 44 46 44 46 44 46 00 44 49 44 00 44 46 44 46 44 46 44 46 44 44 49 44 48 44 46 44 44 46 44 46 00 44 49 44 46 44 46 44 46 00 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 46 00 44 49 44 46 44 46 44 46 44 46 44 44 44 44 49 44 48 44 46 44 46 44 46 44 44 44 46 49 44 48 44 46 44 44 44 44 49 44 46 44 46 44 44 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 49 44 00 44 46 44 46 44 46 44 44 44 44 49 44 00 44 46 44 46 44 46 44 44 44 44 49 44 49 44 46 44 46 44 46 44 44 44 44 44 46 44 44 49 44 48 44 46 44 46 44 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 46 44 44 49 44 48 44 46 44 46 44 44 44 46 49 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 44 46 44 44 49 44 48 44 46 44 46 44 46 44 46 44 44 44 44 49 44 48 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 49 44 46 44 46 44 44 44 44 44 44 46 44 46 44 46 44 46 44 46 44 44 49 44 48 44 46 44 46 44 46 00 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 49 44 46 44 46 44 46 44 44 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 00 44 49 44 46 44 46 44 46 44 44 46 44 46 44 44 44 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 44 49 44 48 44 46 44 46 44 46 44 44 49 44 00 49 44 48 44 46 44 46 44 46 44 46 00 44 49 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 46 44 46 44 44 44 44 44 44 49 44 49 44 48 44 46 44 46 48 44 46 44 46 44 44 44 44 49 44 49 44 46 44 44 44 44 44 46 44 44 49 44 48 44 46 44 46 44 46 44 46 49 44 48 44 46 44 46 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 49 44 00 44 46 44 46 00 44 46 44 46 44 46 44 44 44 44 00 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 44 44 44 44 44 49 44 48 44 46 44 46 44 46 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 46 49 44 00 44 46 44 46 44 46 44 46 44 46 44 44 49 44 00 44 46 44 46 44 46 44 44 49 44 48 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 44 49 44 46 44 46 44 46 44 46 44 46 44 44 00 44 46 44 46 44 46 44 46 44 46 00 44 49 44 46 00 44 49 44 46 44 46 44 44 44 44 49 44 48 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 49 44 48 44 46 44 46 44 46 44 46 44 46 44
*/
