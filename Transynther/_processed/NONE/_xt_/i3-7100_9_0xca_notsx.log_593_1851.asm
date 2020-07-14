.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18b2b, %rcx
nop
nop
nop
nop
and $37280, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x11f60, %rbp
dec %r14
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
add $44045, %r9
lea addresses_D_ht+0x3e14, %rsi
lea addresses_WC_ht+0xf540, %rdi
nop
nop
nop
nop
nop
sub $2869, %r9
mov $121, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xae79, %rsi
lea addresses_A_ht+0x15b5c, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $45, %rcx
rep movsw
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xfd14, %rbp
nop
nop
inc %r13
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
cmp $38004, %rcx
lea addresses_UC_ht+0x5a1c, %rdi
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $10026, %r13
lea addresses_normal_ht+0x1d61c, %r14
nop
nop
nop
add %rdx, %rdx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
add $7005, %r13
lea addresses_D_ht+0x34dc, %r14
inc %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
and $0xffffffffffffffc0, %r14
movaps %xmm1, (%r14)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x1dc4c, %rsi
nop
nop
nop
nop
nop
sub $52633, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rsi)
and $20767, %rdi
lea addresses_A_ht+0x181dc, %rsi
lea addresses_D_ht+0x4a44, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $103, %rcx
rep movsw
and $24488, %rbp
lea addresses_A_ht+0x17308, %r9
nop
nop
nop
nop
nop
xor $51484, %rdx
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
xor %rbp, %rbp
lea addresses_UC_ht+0x733c, %rsi
lea addresses_normal_ht+0xf38c, %rdi
nop
nop
nop
xor $64423, %rbp
mov $106, %rcx
rep movsq
nop
nop
nop
nop
sub $59640, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x76b4, %rdx
nop
sub %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
dec %rax

// Load
lea addresses_PSE+0x1706c, %rsi
nop
nop
nop
nop
nop
add $13594, %rcx
mov (%rsi), %edx
nop
xor $27988, %r14

// Load
lea addresses_D+0x14e1c, %r14
clflush (%r14)
nop
nop
nop
nop
sub $40748, %rcx
movaps (%r14), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
sub %r14, %r14

// Load
lea addresses_D+0x11a7e, %r14
nop
nop
nop
and %rax, %rax
mov (%r14), %rsi
nop
nop
nop
nop
add %rdx, %rdx

// Store
mov $0x21c, %rdi
clflush (%rdi)
xor $36715, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
add $49693, %rdi

// Store
lea addresses_UC+0xaf3c, %rsi
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_WT+0xfa1c, %rdi
nop
nop
nop
nop
add $24938, %rax
mov (%rdi), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'39': 593}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
