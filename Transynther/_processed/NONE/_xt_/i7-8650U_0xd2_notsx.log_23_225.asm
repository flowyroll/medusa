.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x108d9, %r14
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
sub $40749, %r14
lea addresses_A_ht+0x60ed, %rdi
nop
nop
nop
and $8659, %r15
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1d0ed, %rsi
lea addresses_D_ht+0x58ed, %rdi
nop
nop
nop
add $199, %r14
mov $105, %rcx
rep movsw
and $39095, %r9
lea addresses_D_ht+0xfced, %r14
xor $20450, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r14)
nop
and %r9, %r9
lea addresses_normal_ht+0xc50f, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r15
movb $0x61, (%rsi)
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1166d, %rsi
lea addresses_normal_ht+0x17451, %rdi
nop
nop
nop
xor %r8, %r8
mov $121, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x136b3, %rsi
lea addresses_WC_ht+0x400d, %rdi
add $38789, %r15
mov $106, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x3431, %rsi
lea addresses_WC_ht+0x1d0ed, %rdi
inc %r15
mov $127, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x186d, %r9
and $15468, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
inc %r8
lea addresses_UC_ht+0x9a71, %rsi
lea addresses_WC_ht+0xddd, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r8, %r8
mov $57, %rcx
rep movsl
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x7ded, %rsi
nop
and $9250, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
add $34032, %r9

// Store
lea addresses_PSE+0x9f6d, %r8
nop
nop
add $23083, %r12
movw $0x5152, (%r8)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0xfced, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r11)
sub %rdi, %rdi

// Store
lea addresses_PSE+0x1dd47, %r12
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r12)
nop
nop
sub %r11, %r11

// Load
lea addresses_RW+0x98ed, %rsi
sub $24464, %rdi
mov (%rsi), %ecx
nop
nop
nop
nop
and $5607, %r12

// Store
lea addresses_WC+0x4b6d, %r9
nop
nop
nop
nop
nop
xor $63863, %r8
movw $0x5152, (%r9)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x125ad, %r11
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r11)
cmp %r9, %r9

// REPMOV
lea addresses_D+0x80ed, %rsi
lea addresses_RW+0x188ad, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $5, %rcx
rep movsb

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
nop
and $61454, %r12

// Store
lea addresses_US+0x454d, %rcx
nop
add %r8, %r8
movb $0x51, (%rcx)
nop
nop
cmp $21792, %rcx

// Faulty Load
lea addresses_PSE+0xa0ed, %r11
nop
xor $48674, %r12
movups (%r11), %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'33': 23}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
