.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaf57, %rax
nop
nop
nop
add $40453, %rdi
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
sub $47115, %r15
lea addresses_WC_ht+0x14727, %rsi
lea addresses_WC_ht+0x2457, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $49, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x7aa7, %rdi
nop
cmp %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x17fdb, %rsi
lea addresses_WT_ht+0x8459, %rdi
nop
nop
cmp %r11, %r11
mov $33, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x457, %rsi
lea addresses_WT_ht+0x3457, %rdi
nop
xor %rbx, %rbx
mov $113, %rcx
rep movsw
sub %r14, %r14
lea addresses_normal_ht+0x7c57, %rsi
lea addresses_normal_ht+0x17457, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $23774, %r14
mov $53, %rcx
rep movsw
nop
xor $53451, %rbx
lea addresses_UC_ht+0xb457, %rcx
nop
nop
dec %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rcx)
nop
nop
and $44099, %rcx
lea addresses_WC_ht+0x11e57, %rbx
nop
add $30670, %rsi
movb (%rbx), %r14b
sub $16669, %rbx
lea addresses_A_ht+0x1df57, %rsi
lea addresses_WT_ht+0x16b7, %rdi
nop
nop
nop
nop
cmp $6651, %r11
mov $11, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_normal_ht+0xeb5f, %rax
nop
sub $36, %rsi
movb $0x61, (%rax)
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x14a39, %rsi
lea addresses_WC_ht+0x129d7, %rdi
nop
nop
nop
nop
sub $21612, %rbx
mov $117, %rcx
rep movsw
nop
nop
nop
nop
and $24823, %rbx
lea addresses_WC_ht+0x1c093, %rsi
lea addresses_D_ht+0x7c17, %rdi
and %r14, %r14
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0xeab7, %rsi
lea addresses_WC_ht+0x1cd83, %rdi
nop
nop
add $49975, %rax
mov $83, %rcx
rep movsb
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_WC+0xa5e1, %r15
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r15)
add $5698, %r11

// Store
lea addresses_WT+0x6057, %r11
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r11)
add $37075, %r8

// Load
lea addresses_US+0xe457, %rcx
nop
nop
nop
cmp $56641, %r11
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
dec %r15

// Store
mov $0x3da4ec0000000397, %rsi
nop
nop
nop
dec %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp $18568, %r14

// Faulty Load
lea addresses_UC+0x8c57, %r8
nop
nop
nop
nop
xor %r14, %r14
vmovntdqa (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'48': 112, '44': 153, '00': 25, '45': 12, '49': 5, '46': 2}
48 44 44 44 44 00 44 48 44 44 44 44 48 48 00 44 48 44 48 44 48 44 48 48 44 48 44 44 44 44 44 48 44 44 44 44 44 45 48 44 44 48 44 44 48 44 44 48 48 44 48 44 00 48 48 48 48 44 44 48 49 48 44 44 44 00 44 44 48 44 48 44 44 48 44 48 48 48 48 44 45 44 48 44 44 44 44 44 48 44 44 48 48 44 44 48 44 44 48 44 44 44 00 00 44 44 45 49 44 48 48 44 44 48 44 44 48 48 48 48 48 44 44 44 44 00 44 44 48 48 44 48 48 48 44 44 44 44 44 48 48 48 44 44 48 44 48 44 48 44 48 00 48 00 46 44 45 49 44 48 45 44 44 44 44 00 44 44 48 48 00 44 45 46 00 45 45 49 45 48 00 44 00 45 48 44 48 44 48 44 44 44 44 44 00 48 44 44 44 48 48 44 48 48 48 44 44 44 48 44 44 48 48 44 44 48 44 44 48 48 44 44 48 44 48 44 44 44 00 48 48 48 48 44 48 45 48 48 48 44 48 44 44 44 48 44 48 48 48 44 44 48 48 48 48 44 48 44 44 48 44 44 44 44 44 44 00 00 00 00 00 00 48 44 00 48 44 44 44 44 49 44 48 48 48 44 48 48 48 48 44 44 48 48 48 00 44 44 45 48 44 44 44 48 44 00 44 44 48
*/
