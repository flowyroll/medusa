.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13ba7, %r15
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r15)
nop
and $25122, %r11
lea addresses_UC_ht+0x31a7, %rsi
lea addresses_A_ht+0xbf2d, %rdi
clflush (%rsi)
sub $24083, %r9
mov $14, %rcx
rep movsl
nop
nop
nop
nop
add $34064, %r11
lea addresses_WC_ht+0xd9a7, %r15
nop
nop
cmp $24074, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x9427, %rsi
clflush (%rsi)
nop
xor %rax, %rax
movb $0x61, (%rsi)
and %r11, %r11
lea addresses_WC_ht+0x22ef, %rcx
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x15d97, %r15
nop
dec %rsi
movl $0x61626364, (%r15)
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x14727, %r15
nop
nop
nop
cmp $20746, %r9
movb (%r15), %r11b
nop
nop
nop
cmp $16097, %rdi
lea addresses_UC_ht+0x9a7, %rcx
nop
nop
cmp %r9, %r9
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
cmp $39110, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xba7, %rax
nop
dec %rsi
movw $0x5152, (%rax)
nop
sub %r10, %r10

// Store
mov $0x206d990000000925, %rcx
nop
cmp %r14, %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rax

// Load
lea addresses_normal+0x108b9, %r14
dec %r11
mov (%r14), %ecx
nop
cmp $60287, %rsi

// Store
lea addresses_US+0x21a7, %rcx
nop
nop
nop
nop
cmp $3936, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x47a7, %r10
clflush (%r10)
sub %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x6b8, %r11
sub $1325, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovntdq %ymm7, (%r11)
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_US+0x21a7, %rsi
nop
nop
nop
sub $13292, %rcx
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 104}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
