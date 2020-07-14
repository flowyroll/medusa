.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b44c, %rsi
lea addresses_WC_ht+0x1a310, %rdi
nop
nop
nop
nop
sub $10118, %r14
mov $118, %rcx
rep movsw
and $9859, %rbp
lea addresses_A_ht+0x9740, %rsi
lea addresses_normal_ht+0x6aa4, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $120, %rcx
rep movsq
nop
nop
nop
xor $18423, %rbp
lea addresses_WT_ht+0xebb4, %r14
cmp $14402, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r14)
nop
nop
inc %rcx
lea addresses_UC_ht+0x458c, %rsi
lea addresses_D_ht+0x1784c, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $105, %rcx
rep movsl
nop
nop
nop
xor $24916, %r11
lea addresses_WT_ht+0x1cf2c, %rsi
lea addresses_UC_ht+0x137cc, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $59, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WC_ht+0x584c, %rdi
nop
cmp $13468, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rdi)
nop
nop
dec %rcx
lea addresses_D_ht+0x134c, %rdi
nop
nop
nop
and $34214, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
sub %rcx, %rcx
lea addresses_A_ht+0x1504c, %r14
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x896c, %rsi
lea addresses_WT_ht+0xf5b8, %rdi
nop
nop
nop
nop
nop
add $42497, %rbp
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1774c, %rsi
lea addresses_normal_ht+0x1b31c, %rdi
nop
nop
dec %r11
mov $117, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_A_ht+0xc44c, %rsi
lea addresses_UC_ht+0x40ac, %rdi
add $29497, %r14
mov $59, %rcx
rep movsw
add $64436, %r11
lea addresses_WT_ht+0xbd0c, %rcx
nop
nop
nop
nop
nop
and $60092, %r14
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
and $61633, %rsi
lea addresses_WT_ht+0xad4c, %r14
nop
mfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r14)
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xde0c, %rsi
lea addresses_UC_ht+0xbc4c, %rdi
clflush (%rsi)
nop
sub %r11, %r11
mov $62, %rcx
rep movsl
nop
nop
nop
nop
nop
and $55402, %r9
lea addresses_normal_ht+0xaf4c, %rcx
nop
xor %rbp, %rbp
mov (%rcx), %dx
nop
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Store
mov $0x5962000000001cc, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_UC+0x544c, %r10
nop
nop
nop
nop
nop
sub $60981, %rcx
vmovntdqa (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'45': 936, '49': 2625, '00': 14498, '46': 3770}
00 49 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 49 45 45 00 00 46 49 00 00 00 00 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 46 49 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 46 49 00 00 00 46 49 45 45 45 00 46 00 00 00 00 00 00 00 46 49 00 00 00 46 49 00 00 45 45 45 45 45 45 45 45 45 00 00 00 46 00 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 45 45 00 45 45 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 00 00 00 00 49 00 00 00 00 00 00 00 46 00 00 00 46 49 00 00 00 46 49 45 45 45 46 49 00 00 00 46 49 00 00 00 46 00 45 45 45 49 00 00 46 00 00 00 46 00 00 00 00 46 49 00 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 46 49 45 45 45 45 46 00 00 00 00 46 49 45 45 45 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 49 00 00 00 00 46 49 00 00 00 46 49 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 46 49 00 00 00 46 49 00 00 46 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 46 00 00 00 46 49 00 00 00 46 00 00 00 00 49 00 00 00 46 49 00 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 46 00 00 00 00 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 46 46 00 00 00 46 00 00 00 00 46 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 00 00 00 49 00 00 00 46 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 00 00 00 46 49 45 45 45 46 49 00 00 00 46 49 00 00 00 46 00 00 00 45 45 00 00 00 46 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 00 49 00 00 00 00 00 00 00 46 49 00 00 00 46 49 45 45 45 45 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 00 46 49 00 00 00 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 49 00 00 00 46 49 00 00 00 49 00 00 49 00 00 46 49 00 00 00 46 49 00 00 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 46 49 00 00 00 46 49 00 00 00 45 45 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 00 46 00 00 00 00 46 49 00 00 00 46 49 00 00 00 46 49 00 00 00 45 45 00 00 00 46 00 00 00 49 00 00 00 46 49 00 00 00 46 49 00 00 00 49 45 45 45 45 46 49 00 00 00 46 49 00 00 00 46 49 00 00 46 46 00 00 00 00 49 00 00 00 00 49 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 49 00 00 00 46 00 00 00 00 46 49 00 00 00 46 49 00 00 00 00 49 00 00 00 49 00 00 00 46 49 00 00 00 46 49 45 45 45 45
*/
