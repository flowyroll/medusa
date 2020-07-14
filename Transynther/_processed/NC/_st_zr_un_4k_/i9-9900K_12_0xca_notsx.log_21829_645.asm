.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1511f, %rdx
nop
cmp $38329, %r11
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
nop
xor $53582, %rbx
lea addresses_UC_ht+0x14b1b, %rbp
nop
nop
nop
add $9451, %r10
mov (%rbp), %rax
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1518b, %r11
nop
nop
sub %r15, %r15
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x11edb, %r15
nop
nop
nop
and %r11, %r11
mov (%r15), %ebp
nop
cmp $43055, %r11
lea addresses_normal_ht+0x19e1b, %rsi
lea addresses_D_ht+0x1731b, %rdi
nop
nop
sub %rdx, %rdx
mov $63, %rcx
rep movsl
sub $312, %rcx
lea addresses_normal_ht+0xa0f2, %rdx
add %rbp, %rbp
movb $0x61, (%rdx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1536b, %rsi
lea addresses_normal_ht+0x13efb, %rdi
nop
cmp $3968, %r10
mov $34, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x2d1b, %r11
nop
and $44892, %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x3927, %rax
clflush (%rax)
nop
nop
nop
nop
sub $3284, %r11
movb $0x61, (%rax)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x729b, %rsi
nop
nop
nop
sub $11969, %r10
movb (%rsi), %bl
and %rdi, %rdi
lea addresses_UC_ht+0x1a1b, %rsi
lea addresses_A_ht+0x1889b, %rdi
dec %r11
mov $3, %rcx
rep movsw
nop
nop
nop
cmp $13108, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x1c31b, %rcx
clflush (%rcx)
cmp %rbx, %rbx
movl $0x51525354, (%rcx)
inc %rbp

// Faulty Load
mov $0x2f4ac9000000031b, %r12
nop
nop
nop
nop
nop
dec %r9
mov (%r12), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'00': 357, '6d': 17588, '54': 3884}
54 6d 6d 6d 6d 54 6d 6d 6d 54 54 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 00 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 6d 6d 6d 54 54 54 6d 54 54 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 54 6d 6d 00 54 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 54 6d 6d 00 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 54 00 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 54 6d 6d 54 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 54 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 54 6d 54 6d 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 54 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 54 6d 6d 00 54 6d 6d 6d 6d 6d 54 6d 54 6d 00 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 54 54 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 00 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 54 6d 54 54 6d 54 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54
*/
