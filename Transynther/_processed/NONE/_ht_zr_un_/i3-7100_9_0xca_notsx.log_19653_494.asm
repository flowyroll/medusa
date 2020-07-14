.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x9f4d, %rsi
lea addresses_UC_ht+0xbbed, %rdi
nop
nop
nop
cmp $41836, %r14
mov $44, %rcx
rep movsb
add %rdx, %rdx
lea addresses_UC_ht+0x13093, %r10
clflush (%r10)
nop
nop
nop
nop
inc %r11
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
add $38649, %r14
lea addresses_normal_ht+0x772d, %rsi
lea addresses_WC_ht+0x16ed, %rdi
nop
nop
nop
dec %r11
mov $97, %rcx
rep movsw
nop
sub $33518, %rdi
lea addresses_normal_ht+0x4a8d, %rdi
nop
nop
sub %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
add $43390, %r11
lea addresses_WT_ht+0x7ced, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
movb (%r14), %dl
nop
nop
nop
nop
nop
sub $9945, %rcx
lea addresses_WT_ht+0x182ed, %rsi
lea addresses_A_ht+0x108ed, %rdi
clflush (%rsi)
nop
nop
nop
xor %rax, %rax
mov $2, %rcx
rep movsw
nop
inc %r11
lea addresses_normal_ht+0xcced, %rsi
lea addresses_WT_ht+0x250d, %rdi
nop
nop
and %r10, %r10
mov $73, %rcx
rep movsl
nop
nop
and $21022, %rsi
lea addresses_normal_ht+0x2ed, %rdx
nop
nop
nop
nop
add $31904, %rax
mov (%rdx), %edi
cmp %r10, %r10
lea addresses_normal_ht+0x52ed, %r11
nop
nop
nop
dec %rdi
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0xeced, %rax
clflush (%rax)
xor $15159, %rcx
movw $0x6162, (%rax)
cmp $24886, %rcx
lea addresses_WC_ht+0x3ccc, %rdi
nop
nop
nop
and %rax, %rax
mov (%rdi), %ecx
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xa88d, %rax
nop
nop
nop
add $13457, %r11
movb $0x61, (%rax)
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x14aed, %rsi
lea addresses_normal_ht+0xcfed, %rdi
nop
nop
nop
cmp $16778, %rdx
mov $113, %rcx
rep movsb
nop
nop
nop
add $61095, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WC+0xa8ed, %rax
nop
nop
nop
nop
sub %r13, %r13
mov (%rax), %r15
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_normal+0x1686d, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rdi)

// Exception!!!
nop
nop
mov (0), %r8
nop
nop
nop
add $39297, %r13

// Load
mov $0xf6d, %rcx
cmp %rdi, %rdi
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rax
add $35572, %r15

// Faulty Load
lea addresses_A+0x19aed, %rdi
nop
nop
nop
nop
nop
cmp $61223, %r13
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'b1': 1, '48': 10550, '7e': 1, '00': 4527, '40': 2, '44': 4563, '16': 1, '47': 8}
00 00 44 48 48 48 44 48 48 00 48 00 48 48 48 48 48 44 00 48 48 48 44 48 48 00 48 48 44 48 44 48 48 44 48 00 44 48 44 48 48 44 48 48 44 48 48 44 48 00 48 48 44 48 48 48 48 48 44 48 44 48 48 48 48 44 48 48 44 48 48 44 48 48 48 44 44 48 00 48 44 48 44 44 48 48 00 48 00 48 44 48 44 48 48 48 44 48 48 44 48 48 00 48 00 48 48 00 48 00 48 48 44 44 44 48 48 48 00 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 44 48 44 00 48 44 44 44 44 48 48 48 48 48 48 48 00 48 00 48 44 48 00 48 00 48 48 48 48 44 44 48 48 00 44 00 44 44 48 48 44 48 44 44 48 44 00 48 48 48 44 44 48 00 48 44 00 48 48 44 48 48 48 48 00 48 48 00 48 48 44 48 48 48 48 48 48 00 00 48 00 48 48 00 48 44 00 48 44 44 44 48 48 44 48 44 48 00 48 48 48 48 48 48 48 48 48 44 44 48 00 48 48 44 48 44 44 44 48 00 44 48 00 48 48 00 48 48 44 44 48 48 48 48 00 44 48 44 48 44 48 44 00 48 48 48 44 48 00 48 00 48 44 48 00 44 48 48 44 48 48 44 48 48 00 48 48 48 48 00 44 48 48 00 48 44 48 44 44 44 48 00 48 48 00 48 00 44 44 48 48 48 44 48 48 00 48 44 48 48 44 44 44 48 00 44 48 00 44 48 48 44 48 00 48 00 00 00 44 48 00 48 44 44 48 48 00 48 00 44 48 00 48 48 48 48 48 44 48 00 44 48 48 48 48 48 48 48 48 44 00 48 44 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 44 48 48 48 48 00 48 48 48 00 44 48 00 48 48 00 48 44 00 48 00 48 44 48 00 48 48 44 48 00 44 44 44 48 48 48 44 00 44 48 44 44 44 48 44 48 48 44 48 44 48 48 44 48 00 48 00 44 48 00 48 48 48 48 48 44 48 48 48 00 00 48 48 48 00 48 48 48 44 48 00 48 48 00 48 48 44 00 00 00 44 48 00 44 48 48 00 48 00 48 44 44 44 44 48 00 48 48 44 48 48 44 48 00 48 48 00 44 48 00 44 48 48 44 48 48 00 48 48 44 48 00 48 48 00 48 48 48 00 48 48 48 00 44 48 00 48 44 48 44 48 48 48 48 48 00 44 48 48 44 48 48 44 48 48 48 00 48 00 44 48 44 44 48 44 48 48 48 48 48 00 48 00 48 48 00 48 00 48 48 00 48 00 48 44 48 00 44 48 48 44 44 48 00 44 44 44 48 44 48 48 44 48 48 48 48 48 44 44 44 44 44 48 48 00 48 00 48 47 00 44 48 44 00 00 48 00 00 00 48 44 44 44 00 48 44 48 48 44 44 48 44 44 00 44 40 00 44 48 48 44 48 44 48 00 48 48 44 48 00 00 48 48 44 48 48 44 00 00 47 44 00 00 48 48 48 00 48 44 48 00 48 44 00 44 00 48 48 48 00 00 00 44 00 48 44 44 44 44 44 00 44 48 44 00 00 00 00 48 44 44 44 48 48 44 00 48 00 48 00 48 00 00 44 48 44 44 00 00 44 00 48 00 00 48 48 00 48 44 48 00 48 48 48 48 44 48 48 00 48 44 44 48 00 48 44 48 44 48 48 48 00 00 48 48 00 48 48 00 48 44 48 48 00 48 00 44 00 48 00 48 44 48 48 44 48 48 44 44 44 44 48 48 44 44 00 48 00 48 44 48 48 00 48 48 48 48 44 48 48 48 44 44 44 44 44 48 48 48 48 44 48 00 48 48 48 48 00 44 48 44 00 48 48 48 00 48 00 44 44 44 48 48 44 48 44 44 48 48 48 00 48 48 00 48 00 48 44 00 00 48 00 48 00 48 00 44 44 48 48 44 48 44 00 48 00 48 00 44 48 00 48 48 48 44 48 48 44 48 00 44 48 00 48 44 00 00 48 48 44 44 48 48 00 48 48 48 00 48 48 44 44 48 00 48 48 44 00 44 48 44 00 48 48 48 44 48 00 48 00 00 44 48 00 00 48 48 44 00 48 00 48 00 48 44 48 44 48 48 48 48 48 00 48 44 00 48 48 00 00 48 00 48 48 00 48 44 48 48 48 48 44 48 00 48 48 48 44 00 48 48 00 48 00 44 00 48 48
*/
