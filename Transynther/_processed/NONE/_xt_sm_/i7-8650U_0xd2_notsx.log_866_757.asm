.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbx
push %rdx
lea addresses_WT_ht+0x1433e, %rbx
clflush (%rbx)
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
xor %rdx, %rdx
pop %rdx
pop %rbx
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x47a, %rsi
lea addresses_PSE+0x6fe, %rdi
nop
add $101, %r11
mov $26, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_D+0x153de, %rcx
nop
nop
nop
nop
add $45080, %rdi
mov (%rcx), %si
nop
nop
nop
nop
nop
cmp $17501, %rdi

// Store
lea addresses_WC+0xb99e, %rcx
nop
nop
nop
nop
nop
and $22889, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0x1bb6e, %r10
nop
nop
sub $16364, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
cmp $39736, %r11

// Store
lea addresses_RW+0xf3aa, %rcx
clflush (%rcx)
nop
nop
inc %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0xfb3e, %r11
nop
nop
nop
nop
and %rdi, %rdi
movb $0x51, (%r11)
nop
nop
nop
nop
sub %r13, %r13

// Load
lea addresses_WT+0xe33e, %r10
nop
cmp %r13, %r13
mov (%r10), %r12
nop
nop
cmp %r13, %r13

// Load
mov $0xb3e, %rdi
clflush (%rdi)
nop
add %r12, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
nop
xor $58355, %r13

// Store
lea addresses_normal+0xfb3e, %r10
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movaps %xmm5, (%r10)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x15c3e, %r11
add %r13, %r13
movb $0x51, (%r11)
nop
nop
nop
nop
and $64090, %rcx

// Store
lea addresses_RW+0xac3e, %rcx
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovaps %ymm1, (%rcx)
and %r13, %r13

// Load
mov $0x295a89000000073e, %r11
nop
nop
xor $48985, %r13
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x106de, %r10
nop
nop
nop
nop
xor $27110, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
add %r13, %r13

// Store
lea addresses_US+0x1a1ee, %rdi
nop
and %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
and $37323, %r10

// Faulty Load
lea addresses_normal+0xfb3e, %rcx
cmp %rdi, %rdi
mov (%rcx), %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 866}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
