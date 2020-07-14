.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5232, %r13
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x61, (%r13)
nop
nop
nop
nop
add $58300, %r10
lea addresses_normal_ht+0x35ee, %rdx
nop
nop
nop
xor $49159, %r15
movw $0x6162, (%rdx)
cmp $7481, %r11
lea addresses_WT_ht+0x16492, %rdx
nop
nop
nop
nop
sub $18099, %r11
mov (%rdx), %r13
add %r13, %r13
lea addresses_WC_ht+0x15932, %r8
add %rbp, %rbp
mov (%r8), %r10
nop
nop
sub $6379, %r15
lea addresses_WT_ht+0x1e3b2, %rsi
lea addresses_WT_ht+0x14d32, %rdi
nop
inc %r15
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1bb32, %rsi
lea addresses_A_ht+0x1c318, %rdi
clflush (%rdi)
nop
cmp $56817, %r11
mov $115, %rcx
rep movsb
sub $41431, %r15
lea addresses_WC_ht+0x18952, %rsi
lea addresses_UC_ht+0x85b8, %rdi
nop
nop
nop
nop
nop
xor $44162, %r11
mov $4, %rcx
rep movsq
nop
nop
nop
and $37672, %rdx
lea addresses_D_ht+0x16932, %rcx
and %r15, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp $55885, %r10
lea addresses_UC_ht+0x41b2, %rdi
clflush (%rdi)
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
cmp $12255, %rcx
lea addresses_A_ht+0x8f32, %rsi
xor %rdx, %rdx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
xor $45905, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x12132, %rbp
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rbp)
nop
nop
nop
sub $61326, %rcx

// Faulty Load
lea addresses_A+0x12132, %rdx
xor %rcx, %rcx
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'49': 15016, 'ee': 1, '46': 9, '45': 14, '00': 6788, '24': 1}
00 49 00 49 49 00 00 49 49 49 49 49 00 49 00 00 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 00 49 49 00 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 00 00 49 00 49 49 49 49 49 49 49 49 49 00 00 00 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 00 49 00 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 00 49 49 49 49 49 49 00 00 49 49 00 00 49 49 00 49 00 49 49 49 49 49 00 00 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 00 00 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 00 49 49 49 49 49 00 49 49 00 00 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 00 49 49 49 00 00 49 49 49 49 49 49 00 49 00 49 49 49 00 49 49 00 49 00 00 49 49 00 00 49 49 49 49 49 00 49 00 49 49 49 49 00 00 49 49 49 49 49 00 49 49 49 49 49 00 00 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 00 00 49 49 00 49 00 49 49 00 49 49 49 49 49 00 00 00 00 49 00 49 00 49 49 00 49 00 00 49 49 00 00 49 49 00 49 49 49 49 49 49 00 00 49 00 49 00 00 49 49 00 49 49 00 00 49 49 49 00 00 49 00 49 49 49 49 49 00 00 49 00 00 49 00 49 49 49 49 49 00 49 49 00 00 49 49 00 00 00 49 49 49 49 00 00 00 00 49 49 00 49 49 49 49 00 49 49 00 49 49 00 00 49 49 00 49 00 00 49 49 49 49 49 49 49 49 00 00 00 49 49 49 49 49 49 00 00 00 49 00 49 49 49 49 49 49 49 00 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 00 49 00 49 00 49 49 49 49 00 00 49 49 49 00 00 49 49 00 00 00 49 49 49 00 00 49 00 00 49 49 49 49 00 00 00 49 49 49 49 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 00 00 49 49 00 00 49 00 49 49 49 49 49 49 00 00 49 00 49 49 49 00 00 49 49 00 49 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 00 49 49 00 00 49 49 49 00 00 49 49 49 49 00 49 49 49 49 49 00 00 49 49 00 49 00 00 49 49 49 00 49 49 49 00 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 00 00 49 49 49 49 49 49 00 00 49 49 00 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 00 00 00 00 49 49 00 49 49 49 49 49 49 49 00 49 00 49 00 49 49 00 00 49 00 00 49 49 49 00 49 49 49 49 49 00 00 00 49 49 49 00 49 49 00 49 49 49 49 00 49 49 00 00 49 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 00 49 49 00 00 49 00 49 49 49 00 00 49 49 00 49 00 49 00 49 00 49 49 49 49 49 00 49 49 49 49 00 49 49 00 49 00 49 49 00 00 49 49 49 49 49 00 49 49 00 49 49 49 00 00 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 49 49 49 00 49 49 00 00 00 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 00 49 00 49 49 49 00 00 49 49 49 49 00 49 49 49 49 49 00 49 49 49 00 49 00 49 49 00 00 49 49 00 49 00 49 49 00 49 00 00 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 00 00 49 49 49 00 00 49 49 49 00 00 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 00 49 49 49 49 00
*/
