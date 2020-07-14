.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb1f7, %r13
clflush (%r13)
dec %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r13)
nop
add %rax, %rax
lea addresses_UC_ht+0xcd0e, %r11
nop
nop
nop
add $46722, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
and $43439, %rcx
lea addresses_WC_ht+0x1410e, %rsi
lea addresses_A_ht+0x410e, %rdi
nop
nop
sub $4433, %rbp
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $52485, %rdi
lea addresses_WT_ht+0x13e0e, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r13)
sub %rax, %rax
lea addresses_D_ht+0x1610e, %r11
nop
nop
nop
inc %rax
movl $0x61626364, (%r11)
nop
nop
and $65271, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x18580, %rbp
nop
nop
nop
nop
add $21041, %r15
movb $0x51, (%rbp)
nop
nop
sub %rdx, %rdx

// REPMOV
lea addresses_UC+0xf98e, %rsi
lea addresses_WT+0xcd18, %rdi
nop
nop
nop
add %rbp, %rbp
mov $37, %rcx
rep movsb
nop
nop
sub %r15, %r15

// Store
lea addresses_normal+0xbd4e, %rdx
nop
nop
nop
cmp $38989, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp $23501, %rbp

// Faulty Load
lea addresses_A+0x1510e, %r12
nop
nop
nop
nop
cmp $42320, %rdx
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'00': 5}
00 00 00 00 00
*/
