.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1089, %r15
nop
nop
cmp $13558, %r9
movb (%r15), %cl
dec %r13
lea addresses_normal_ht+0x11d09, %r14
nop
nop
nop
nop
sub $35346, %rax
movl $0x61626364, (%r14)
nop
inc %rcx
lea addresses_WT_ht+0x1ee4e, %r9
nop
nop
nop
cmp $1823, %rdi
mov (%r9), %ecx
nop
nop
dec %r14
lea addresses_WT_ht+0xdd09, %rsi
lea addresses_normal_ht+0xd509, %rdi
nop
nop
dec %r13
mov $42, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $22902, %rsi
lea addresses_WC_ht+0x15779, %rsi
lea addresses_UC_ht+0x133bf, %rdi
nop
nop
add %r13, %r13
mov $126, %rcx
rep movsl
cmp $48648, %r15
lea addresses_normal_ht+0x19899, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r14), %rax
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1dd09, %rsi
lea addresses_A_ht+0x12d09, %rdi
xor %r9, %r9
mov $5, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_UC_ht+0x1d569, %rsi
lea addresses_WT_ht+0x8d09, %rdi
nop
nop
nop
xor $53032, %r15
mov $46, %rcx
rep movsw
nop
xor $40336, %rdi
lea addresses_UC_ht+0x1b689, %rax
clflush (%rax)
nop
nop
nop
nop
nop
dec %rsi
movb $0x61, (%rax)
nop
nop
nop
sub $64436, %rax
lea addresses_WC_ht+0x2a39, %r15
nop
nop
nop
nop
nop
xor $12526, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
xor $48713, %rdi
lea addresses_WT_ht+0x1b9f1, %rcx
nop
nop
nop
add %rsi, %rsi
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
sub $22495, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_D+0xc509, %r11
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x14509, %r9
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r9)
nop
cmp %r12, %r12

// Load
lea addresses_RW+0xfe77, %r11
nop
nop
nop
nop
add $24931, %r12
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
and %rax, %rax

// Load
mov $0x919, %rax
nop
nop
cmp %rdi, %rdi
vmovntdqa (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
add $47501, %r12

// Store
lea addresses_D+0x69c9, %r9
nop
nop
nop
xor $64792, %rsi
movb $0x51, (%r9)
nop
nop
and %r12, %r12

// Store
lea addresses_D+0xfba4, %r9
nop
nop
nop
sub $35487, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r9)
nop
add %r13, %r13

// Load
mov $0x1ae5cc0000000899, %rax
nop
xor %r11, %r11
movb (%rax), %r12b
nop
nop
nop
nop
nop
cmp $5162, %r11

// Load
lea addresses_US+0x1d1ed, %r13
sub $49693, %rsi
mov (%r13), %r11
nop
nop
nop
nop
nop
and $21425, %rax

// Load
mov $0xd09, %r9
nop
nop
nop
nop
sub %r12, %r12
mov (%r9), %r13w
and $14133, %r13

// Store
lea addresses_WT+0x110bd, %rdi
nop
nop
nop
nop
nop
cmp $34831, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
xor $35093, %rdi

// Store
lea addresses_WC+0xcd09, %r12
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
inc %rax

// Faulty Load
lea addresses_WC+0xcd09, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovaps (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'00': 32}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
