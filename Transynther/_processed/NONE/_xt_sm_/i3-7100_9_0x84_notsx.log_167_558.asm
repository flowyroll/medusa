.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x17475, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x15335, %rsi
lea addresses_WT_ht+0x850b, %rdi
clflush (%rsi)
nop
dec %r11
mov $21, %rcx
rep movsl
nop
cmp $24362, %r8
lea addresses_UC_ht+0x159bb, %r11
sub $52343, %rdx
mov (%r11), %di
nop
nop
nop
nop
nop
sub $42025, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1d135, %rdx
add %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0x16b35, %rsi
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
add $27033, %r8

// Load
mov $0xdad, %rdi
dec %r9
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_RW+0x16b35, %rdi
nop
nop
nop
nop
nop
and $2411, %rdx
movl $0x51525354, (%rdi)
sub %r8, %r8

// Load
lea addresses_UC+0x15d35, %rcx
nop
sub %rdx, %rdx
mov (%rcx), %r11w
nop
nop
nop
add $37064, %rsi

// Store
lea addresses_RW+0x16b35, %rdx
add $1916, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
inc %r9

// Faulty Load
lea addresses_RW+0x16b35, %r9
nop
nop
nop
cmp %r8, %r8
mov (%r9), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 167}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
