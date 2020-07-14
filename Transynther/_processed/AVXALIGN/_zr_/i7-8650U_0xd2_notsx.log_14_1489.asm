.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd05b, %r11
nop
nop
nop
and $47252, %r9
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
xor $63472, %r15
lea addresses_WC_ht+0x12c5b, %r14
nop
nop
nop
nop
and $10496, %rcx
mov (%r14), %r10d
nop
nop
nop
nop
add $43082, %r9
lea addresses_WC_ht+0x15c5b, %rsi
lea addresses_WT_ht+0x1c997, %rdi
nop
nop
nop
sub $33344, %r14
mov $56, %rcx
rep movsl
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x849b, %rsi
lea addresses_UC_ht+0x1b45b, %rdi
clflush (%rdi)
nop
nop
nop
and %r14, %r14
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xfa5b, %rdi
nop
nop
nop
add %r14, %r14
mov (%rdi), %r10d
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x1556b, %rsi
nop
nop
xor %r11, %r11
movb $0x61, (%rsi)
nop
nop
cmp $31821, %r10
lea addresses_UC_ht+0xe47b, %r9
nop
nop
nop
nop
add $13586, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
sub $64011, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x505b, %rdi
nop
nop
xor $12370, %rbx
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rsi
cmp $54096, %rdi

// Load
lea addresses_WT+0x1ac13, %r14
nop
nop
nop
nop
nop
xor $25667, %r12
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x7361, %r12
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r12)
nop
nop
nop
nop
nop
sub $7586, %r14

// Store
lea addresses_WT+0x18e97, %r11
nop
nop
nop
sub $28114, %r12
movw $0x5152, (%r11)

// Exception!!!
nop
mov (0), %r12
nop
cmp $56840, %rsi

// Store
lea addresses_UC+0x11adb, %r14
nop
and $33862, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
xor $48558, %r14

// Faulty Load
mov $0x62e550000000085b, %rdx
nop
and $43289, %rbx
mov (%rdx), %r11d
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
