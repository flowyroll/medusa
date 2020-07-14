.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6849, %rsi
lea addresses_WC_ht+0x38c9, %rdi
clflush (%rdi)
sub %rax, %rax
mov $120, %rcx
rep movsb
nop
nop
and $51819, %r8
lea addresses_UC_ht+0x849, %rcx
nop
nop
dec %r14
movl $0x61626364, (%rcx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x276d, %rcx
sub %r15, %r15
movb (%rcx), %r8b
nop
sub $9244, %r15
lea addresses_WC_ht+0x89a1, %rcx
clflush (%rcx)
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rcx)
inc %rcx
lea addresses_WT_ht+0x13a49, %r8
xor %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
cmp $41310, %r8
lea addresses_D_ht+0x14349, %rax
nop
and $23003, %r15
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
xor $23684, %rsi
lea addresses_WT_ht+0x2a65, %rsi
lea addresses_normal_ht+0x11fa1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r13, %r13
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x8099, %rax
nop
nop
and %r15, %r15
mov (%rax), %r14d
nop
nop
nop
nop
and $21057, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x6049, %r9
nop
sub %r11, %r11
movw $0x5152, (%r9)
nop
nop
nop
cmp %r15, %r15

// REPMOV
lea addresses_D+0x19bf1, %rsi
lea addresses_UC+0x1c749, %rdi
clflush (%rsi)
clflush (%rdi)
and $64516, %rdx
mov $126, %rcx
rep movsl
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x196c9, %rdi
nop
nop
nop
nop
nop
cmp $11188, %rsi
movb $0x51, (%rdi)
nop
nop
cmp %r13, %r13

// Store
mov $0x41a580000000849, %rsi
nop
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub $10747, %rdx

// Faulty Load
mov $0x41a580000000849, %rdi
inc %rcx
mov (%rdi), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'00': 9, '54': 80}
54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00
*/
