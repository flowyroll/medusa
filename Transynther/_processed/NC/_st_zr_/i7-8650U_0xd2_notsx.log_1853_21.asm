.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15deb, %r14
nop
nop
nop
nop
nop
xor $61903, %rbx
movl $0x61626364, (%r14)
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x26eb, %rsi
lea addresses_normal_ht+0x1a3eb, %rdi
nop
inc %r11
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
add $54230, %rdi
lea addresses_UC_ht+0x2edd, %rsi
nop
nop
nop
nop
nop
add $27760, %rdi
movw $0x6162, (%rsi)
sub $10377, %r15
lea addresses_WT_ht+0x197eb, %rbx
nop
nop
sub $7968, %r11
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
cmp %r15, %r15
lea addresses_WC_ht+0x7c6b, %rsi
lea addresses_normal_ht+0x456b, %rdi
nop
nop
add $14938, %r12
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $25088, %r14
lea addresses_WC_ht+0x442b, %rbx
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x120eb, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub $20982, %rsi
lea addresses_WT_ht+0xc4eb, %rsi
nop
nop
inc %rcx
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
sub $2744, %rcx
lea addresses_D_ht+0x8e1b, %r12
nop
nop
dec %rcx
movl $0x61626364, (%r12)
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x10ceb, %r14
nop
nop
nop
sub $6734, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x2e6b, %rcx
cmp $37782, %r12
mov (%rcx), %esi
xor %r11, %r11
lea addresses_UC_ht+0x1c32a, %rsi
lea addresses_D_ht+0x1202b, %rdi
nop
add $10939, %rbx
mov $22, %rcx
rep movsq
sub %rbx, %rbx
lea addresses_D_ht+0x107b, %r12
nop
nop
nop
xor $34232, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r12)
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1c6eb, %rsi
lea addresses_normal+0x2323, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $39, %rcx
rep movsq
nop
and $9889, %r14

// Store
lea addresses_WT+0x40eb, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
and %rdi, %rdi

// Faulty Load
mov $0x7da36c00000000eb, %r13
nop
xor $10631, %rdi
mov (%r13), %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 1367, '58': 486}
00 00 58 58 58 58 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 58 00 00 58 00 00 58 58 58 00 58 00 00 58 58 00 00 58 00 00 58 58 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 58 58 00 58 58 00 00 58 58 58 00 00 00 00 58 00 00 58 58 58 58 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 58 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 58 58 58 00 00 58 00 58 00 00 00 00 58 58 58 58 00 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 58 00 58 00 00 58 00 58 58 58 00 58 00 00 58 00 58 00 00 00 58 00 58 00 58 58 00 00 58 58 00 58 58 00 00 00 00 58 00 58 00 58 00 00 00 58 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 58 58 58 58 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 58 00 00 58 00 00 00 58 00 00 58 58 00 00 58 58 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 58 58 00 58 00 58 00 00 00 00 58 58 58 00 00 00 00 00 58 58 00 58 00 58 00 00 00 00 00 00 00 58 00 58 00 58 00 58 58 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 00 00 00 58 58 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 58 00 58 00 00 00 58 58 58 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 58 00 58 58 00 00 00 58 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 58 58 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 00 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 58 00 00 58 00 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 58 00 00 58 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 58 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 58 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 58 00 58 00 00 58 58 00 00 00 00 00 58 00 58 00 00 00 58 58 00 00 00 00 00 58 00 00 58 00 58 58 00 00 00 00 00 00 00 00 58 58 00 58 00 58 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 58 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 58 00
*/
