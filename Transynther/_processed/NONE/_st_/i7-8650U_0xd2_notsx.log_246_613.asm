.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_WT_ht+0x18d68, %rbp
nop
nop
nop
nop
inc %rbx
movb $0x61, (%rbp)
nop
nop
nop
sub $25462, %r12
lea addresses_normal_ht+0x16fe8, %rdx
inc %rdi
mov (%rdx), %cx
xor %rdx, %rdx
lea addresses_A_ht+0xbf70, %rdi
and $50871, %r12
movb (%rdi), %dl
nop
nop
sub $61600, %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x29e8, %r10
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%r10)
nop
nop
add $5356, %r9

// Load
lea addresses_RW+0x19ed0, %r10
nop
nop
nop
sub $11021, %r9
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
and $48135, %rdi

// REPMOV
lea addresses_UC+0x10ee8, %rsi
lea addresses_PSE+0x117e8, %rdi
nop
nop
nop
nop
dec %r11
mov $39, %rcx
rep movsq
sub %rsi, %rsi

// Load
mov $0x3e8, %rsi
nop
sub $14309, %r10
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
add %r11, %r11

// Store
lea addresses_A+0xbe8, %r10
nop
nop
nop
nop
inc %rcx
movw $0x5152, (%r10)
nop
dec %r10

// Faulty Load
lea addresses_A+0x19be8, %r9
nop
nop
nop
nop
nop
xor $136, %r13
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'52': 246}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
