.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d4fd, %rsi
lea addresses_A_ht+0x18655, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $81, %rcx
rep movsw
nop
nop
add $48833, %r11
lea addresses_WT_ht+0xe595, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rcx
nop
cmp %r9, %r9
lea addresses_WT_ht+0x11595, %r8
nop
nop
nop
nop
inc %r14
movb (%r8), %r9b
nop
nop
nop
nop
nop
xor $50708, %rcx
lea addresses_WC_ht+0x8215, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $25617, %r14
mov (%rdi), %r11d
nop
nop
nop
add $50350, %rdi
lea addresses_D_ht+0x18b15, %rsi
lea addresses_A_ht+0x6aed, %rdi
xor %r14, %r14
mov $62, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x14355, %rsi
lea addresses_UC_ht+0x1555, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $101, %rcx
rep movsw
xor $37662, %r14
lea addresses_UC_ht+0x11155, %rcx
nop
nop
nop
nop
inc %rbx
movb (%rcx), %r9b
and $51105, %rsi
lea addresses_WT_ht+0xaa15, %rbx
nop
cmp $63718, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x4ee7, %r11
nop
nop
sub $6856, %rcx
movl $0x61626364, (%r11)
nop
nop
and $17715, %rsi
lea addresses_A_ht+0x10b05, %rbx
nop
nop
nop
nop
nop
inc %r11
mov (%rbx), %rcx
and %rdi, %rdi
lea addresses_WT_ht+0x1da55, %rsi
lea addresses_D_ht+0x5c1b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x6595, %rdi
nop
nop
cmp %r11, %r11
movb (%rdi), %r9b
sub $21280, %r8
lea addresses_WC_ht+0x1ae15, %r11
nop
nop
nop
add %rdi, %rdi
mov (%r11), %r9
nop
sub $41675, %r11
lea addresses_A_ht+0xde75, %rsi
lea addresses_normal_ht+0x23f5, %rdi
nop
nop
cmp $41507, %r8
mov $31, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xd19d, %rsi
nop
nop
nop
nop
xor %r11, %r11
mov (%rsi), %ecx
nop
and $37679, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WC+0xc0ee, %r10
nop
nop
dec %rax
mov (%r10), %esi
nop
nop
nop
nop
nop
xor $16005, %rax

// Store
lea addresses_A+0x12c97, %r10
nop
nop
nop
add $48675, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WC+0x13dd3, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x63532a0000000955, %r10
xor $45123, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
xor $56357, %r10

// Store
lea addresses_D+0x2b11, %r10
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
nop
and $17203, %rsi

// Store
mov $0x7846ee00000006e5, %rcx
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%rcx)
nop
nop
nop
cmp $12740, %rax

// Faulty Load
mov $0x63532a0000000955, %r10
nop
nop
nop
nop
and %rdx, %rdx
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'46': 88, '72': 1, '45': 6708, '00': 3340, '49': 694, '6c': 2, '08': 24, 'c5': 1, 'ff': 31}
45 6c 6c 45 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 49 45 45 45 45 45 45 45 00 00 00 00 00 00 00 45 00 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 00 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 00 00 49 00 00 00 00 00 45 45 45 45 45 45 45 45 00 00 00 49 00 00 00 00 00 00 00 00 45 45 49 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 49 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 00 45 45 45 45 49 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 49 45 45 45 45 00 00 00 49 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 c5 00 45 45 45 45 45 45 45 45 49 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 49 00 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 00 45 45 49 45 45 45 45 45 45 45 45 00 45 45 45 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 45 45 45 45 45 45 45 45 45 49 00 00 45 00 49 00 45 45 45 45 49 45 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 45 45 45 45 45 00 00 00 00 00 45 49 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 49 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 45 45 45
*/
