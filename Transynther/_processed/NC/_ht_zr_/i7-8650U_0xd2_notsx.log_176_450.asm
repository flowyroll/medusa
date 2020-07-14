.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6886, %rbp
nop
nop
nop
nop
inc %r10
mov (%rbp), %r12d
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x12392, %r9
cmp %rbp, %rbp
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x32e2, %rsi
lea addresses_UC_ht+0x2192, %rdi
nop
nop
nop
and %r12, %r12
mov $103, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x11d2, %rsi
lea addresses_WT_ht+0x9cd2, %rdi
nop
nop
nop
nop
add $20817, %rbp
mov $41, %rcx
rep movsw
nop
nop
nop
xor $29286, %rdi
lea addresses_UC_ht+0xe4d2, %rsi
lea addresses_D_ht+0x1692, %rdi
nop
nop
nop
sub %r10, %r10
mov $105, %rcx
rep movsw
sub %r9, %r9
lea addresses_WT_ht+0x1a7d2, %r9
nop
nop
nop
nop
xor $45134, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x82aa, %rbp
cmp %r9, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0xcb72, %rdi
nop
sub %rdx, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $47159, %rbx

// Store
lea addresses_normal+0xf932, %rdi
nop
nop
nop
nop
nop
and $18656, %rbx
movw $0x5152, (%rdi)
nop
nop
cmp $34716, %rdx

// Store
lea addresses_D+0x165d2, %r9
nop
nop
sub %r15, %r15
movb $0x51, (%r9)
xor %r9, %r9

// Load
lea addresses_US+0xf9b2, %rbx
nop
nop
sub %r15, %r15
movb (%rbx), %dl
nop
sub $12316, %rdx

// Store
lea addresses_WT+0xcfd2, %rdx
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor $54092, %r9

// Load
lea addresses_PSE+0x34d2, %rbx
sub $17818, %rdi
mov (%rbx), %r9w
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x106d2, %rbx
nop
nop
nop
nop
nop
cmp $52232, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rbx)

// Exception!!!
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x18312, %rdx
nop
add $27013, %r11
movb $0x51, (%rdx)
nop
nop
sub $28448, %r11

// Faulty Load
mov $0x7d98200000004d2, %r11
nop
nop
nop
and %rbx, %rbx
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'44': 174, '00': 2}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44
*/
