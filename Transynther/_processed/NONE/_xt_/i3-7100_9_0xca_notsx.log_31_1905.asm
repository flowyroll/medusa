.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x6f3a, %rsi
lea addresses_WC+0x9292, %rdi
clflush (%rsi)
inc %rbp
mov $109, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x1493a, %rdx
nop
nop
nop
inc %rbp
movb $0x51, (%rdx)
nop
nop
nop
nop
cmp $64642, %rcx

// Store
mov $0x5aa, %rsi
nop
nop
cmp $1611, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movntdq %xmm4, (%rsi)
nop
nop
sub $14636, %rbp

// Store
lea addresses_PSE+0x98ba, %rsi
sub $42713, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)

// Exception!!!
mov (0), %r12
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x2204, %rsi
nop
and %rbp, %rbp
movw $0x5152, (%rsi)
nop
nop
and $37120, %rcx

// Store
lea addresses_D+0x18eba, %rbx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
xor %rsi, %rsi

// Load
lea addresses_PSE+0xf61a, %rdi
sub %rcx, %rcx
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
nop
sub $40391, %rdi

// Load
lea addresses_WT+0xe03a, %rdi
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
inc %rdi

// Load
mov $0xd3a, %rcx
nop
nop
nop
nop
sub %r12, %r12
movntdqa (%rcx), %xmm3
vpextrq $0, %xmm3, %rdx
sub %rsi, %rsi

// Faulty Load
lea addresses_normal+0x6f3a, %rdx
clflush (%rdx)
nop
nop
and $53965, %rbx
mov (%rdx), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 31}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
