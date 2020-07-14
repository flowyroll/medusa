.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dd95, %rbp
sub $11462, %r15
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xcc35, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%rcx)
nop
inc %r13
lea addresses_WT_ht+0xe435, %rsi
lea addresses_normal_ht+0x1d035, %rdi
clflush (%rsi)
nop
dec %rbp
mov $50, %rcx
rep movsb
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x335, %rbp
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovaps %ymm2, (%rbp)
inc %rdx

// Store
lea addresses_RW+0x1a115, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rcx)
nop
nop
cmp $21702, %rdx

// Store
lea addresses_normal+0x1651d, %r15
clflush (%r15)
nop
nop
nop
nop
add $49981, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movntdq %xmm4, (%r15)
nop
nop
nop
and $37684, %r13

// Store
lea addresses_UC+0x15f35, %r13
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r13)
nop
nop
and %r15, %r15

// Store
lea addresses_normal+0x91f5, %r10
nop
nop
nop
nop
xor $50423, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovntdq %ymm7, (%r10)
nop
nop
nop
sub $24416, %r10

// Faulty Load
lea addresses_WT+0x18b35, %rbx
nop
nop
nop
nop
and %rcx, %rcx
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'39': 1}
39
*/
