.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3a32, %rsi
lea addresses_D_ht+0xe3c2, %rdi
nop
nop
nop
and $21754, %rdx
mov $57, %rcx
rep movsl
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1ff2, %rsi
lea addresses_WC_ht+0x157f2, %rdi
nop
nop
nop
nop
xor $46573, %r11
mov $70, %rcx
rep movsw
nop
nop
nop
add $18185, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x2a32, %r10
xor $30263, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r10)
and $18398, %rbx

// Store
lea addresses_D+0x1b832, %rdx
clflush (%rdx)
add $49847, %r13
movw $0x5152, (%rdx)
nop
nop
sub $25161, %r13

// Store
lea addresses_RW+0xa6d9, %rdi
nop
nop
sub %r11, %r11
movb $0x51, (%rdi)
nop
add %r11, %r11

// Store
mov $0x6b62ef0000000632, %rbx
nop
nop
nop
nop
nop
add $50927, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Load
mov $0xb68b50000000905, %rbx
nop
nop
nop
nop
nop
dec %rdi
mov (%rbx), %r10d
nop
sub $55331, %r11

// Store
lea addresses_RW+0xf328, %rdx
nop
nop
nop
nop
add $52730, %r10
movw $0x5152, (%rdx)
nop
nop
nop
cmp $40498, %rdx

// Store
lea addresses_PSE+0x134d2, %r11
xor %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
dec %rbx

// Load
lea addresses_RW+0x1311, %rdx
cmp %r12, %r12
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_RW+0x1be32, %r11
nop
inc %rdi
mov (%r11), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'32': 7}
32 32 32 32 32 32 32
*/
