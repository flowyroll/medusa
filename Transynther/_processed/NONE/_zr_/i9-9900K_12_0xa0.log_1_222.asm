.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x2ed0, %rsi
lea addresses_A+0x1d924, %rdi
nop
nop
nop
cmp $65066, %rax
mov $15, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0xd24, %rdi
nop
and $192, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
cmp $26401, %rdx

// REPMOV
lea addresses_WC+0xc744, %rsi
lea addresses_PSE+0xa2c4, %rdi
nop
nop
nop
nop
inc %rax
mov $81, %rcx
rep movsw
cmp $25476, %rdx

// Load
lea addresses_WT+0x1724, %rcx
nop
nop
nop
add %rdx, %rdx
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
sub %r8, %r8

// Store
mov $0x124, %rax
nop
nop
nop
nop
nop
and $40571, %rdx
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_UC+0xcfe4, %r8
nop
nop
nop
nop
nop
and $2201, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
inc %rdi

// Store
mov $0xe1c, %rdx
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor $24663, %r8

// Store
lea addresses_WT+0x19124, %r8
nop
nop
nop
xor $2210, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
dec %rdi

// REPMOV
lea addresses_normal+0x14124, %rsi
mov $0x684, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $105, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_WT+0x1b038, %rsi
mov $0xfa0, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
mov $64, %rcx
rep movsl
and $1157, %r13

// Store
lea addresses_normal+0x8254, %rsi
nop
add $26556, %rcx
movl $0x51525354, (%rsi)
nop
add $12348, %r13

// Store
lea addresses_UC+0x3084, %r13
nop
nop
dec %rcx
movw $0x5152, (%r13)
nop
nop
add $12899, %rsi

// Store
lea addresses_US+0x324, %r13
nop
inc %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movntdq %xmm0, (%r13)
nop
nop
nop
xor $48310, %rsi

// Faulty Load
lea addresses_normal+0x14124, %rcx
clflush (%rcx)
nop
nop
xor $50681, %rax
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_P'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
