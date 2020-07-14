.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d1ab, %r8
cmp $44976, %rbp
mov (%r8), %r14d
nop
nop
nop
xor $48107, %r15
lea addresses_UC_ht+0x47ab, %r15
nop
inc %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x18d2b, %rsi
lea addresses_WT_ht+0x1d70b, %rdi
nop
nop
nop
sub $44014, %rbp
mov $88, %rcx
rep movsl
nop
nop
nop
add $28461, %rsi
lea addresses_WT_ht+0x458b, %rsi
nop
nop
sub %r15, %r15
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
xor $54331, %r15
lea addresses_WC_ht+0x1dd2b, %r14
nop
add $48485, %rsi
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
sub $53201, %r11
lea addresses_UC_ht+0x18447, %r11
nop
nop
nop
nop
sub $46716, %rbp
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rdi
nop
cmp $33314, %rsi
lea addresses_UC_ht+0xdab, %rsi
nop
nop
nop
xor $47875, %r15
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r8
and %r15, %r15
lea addresses_A_ht+0x1c52b, %r11
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x1099b, %rsi
lea addresses_A_ht+0xd131, %rdi
nop
nop
nop
nop
nop
sub $60155, %r11
mov $123, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x6d2b, %r15
nop
nop
nop
nop
cmp $37006, %r14
movb $0x61, (%r15)
xor %rsi, %rsi
lea addresses_WC_ht+0x18a6b, %rsi
lea addresses_UC_ht+0x8d2b, %rdi
nop
nop
and $1360, %r11
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xe0ab, %r11
nop
and %rbp, %rbp
movb (%r11), %cl
nop
nop
nop
xor $30259, %rcx
lea addresses_A_ht+0x492b, %rsi
lea addresses_normal_ht+0xba6b, %rdi
nop
nop
and %r8, %r8
mov $34, %rcx
rep movsl
nop
nop
nop
nop
and $52247, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx

// Store
lea addresses_WT+0x17b0b, %rcx
nop
and %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
xor $62743, %r14

// Store
lea addresses_D+0x9e2b, %r9
nop
nop
add $8515, %r12
movl $0x51525354, (%r9)
inc %r9

// Store
mov $0x19e, %r11
nop
nop
dec %rcx
movw $0x5152, (%r11)
cmp %r9, %r9

// Store
mov $0x2bb, %r11
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %r10

// Store
mov $0x35152d0000000d2b, %r12
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r12)

// Exception!!!
nop
mov (0), %r11
nop
nop
nop
nop
sub $10000, %r12

// Store
mov $0x35152d0000000d2b, %r12
nop
nop
sub %r9, %r9
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x34b59d000000052b, %rcx
nop
cmp %r14, %r14
movw $0x5152, (%rcx)
cmp %rcx, %rcx

// Store
lea addresses_normal+0xcd2b, %rbp
nop
nop
nop
nop
cmp $45694, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0xec2b, %r14
clflush (%r14)
inc %rbp
movb $0x51, (%r14)
nop
and %rcx, %rcx

// Faulty Load
mov $0x35152d0000000d2b, %rbp
and %r11, %r11
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
