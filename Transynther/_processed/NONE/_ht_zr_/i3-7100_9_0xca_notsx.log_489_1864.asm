.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x151e7, %r15
nop
nop
nop
nop
sub %r9, %r9
movb $0x61, (%r15)
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x113c1, %rsi
lea addresses_A_ht+0xe19f, %rdi
nop
nop
nop
nop
inc %rbp
mov $78, %rcx
rep movsl
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x83e7, %rcx
nop
nop
xor $21615, %r11
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
sub $10803, %r11
lea addresses_WC_ht+0xebe7, %rcx
inc %r11
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x1a3e7, %rbp
dec %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rbp)
sub $33848, %r12
lea addresses_WC_ht+0x27e7, %r15
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor $7212, %rcx
lea addresses_D_ht+0x1e7e7, %r9
nop
nop
nop
nop
sub $14521, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
and $58848, %rcx
lea addresses_WC_ht+0x12767, %r15
clflush (%r15)
nop
nop
add %r12, %r12
movb $0x61, (%r15)
nop
nop
add $24284, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x4d07, %rdx
nop
nop
nop
nop
nop
xor $26972, %r15
movb $0x51, (%rdx)
nop
nop
add $868, %rbp

// Store
lea addresses_A+0x10d8f, %rdx
nop
cmp $40887, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
sub $9511, %rbp

// REPMOV
lea addresses_D+0x1a587, %rsi
lea addresses_WC+0x4bc7, %rdi
nop
nop
nop
lfence
mov $13, %rcx
rep movsw
nop
nop
nop
nop
xor %r9, %r9

// Store
mov $0x2eb26b0000000ae7, %rsi
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_D+0x91b7, %rsi
nop
nop
sub $63316, %rdi
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
cmp $6157, %rcx

// Faulty Load
lea addresses_A+0x113e7, %rdx
nop
nop
nop
and %rcx, %rcx
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'44': 170, '00': 73, '47': 61, '48': 185}
00 47 48 44 48 44 44 44 48 48 48 48 48 00 00 44 48 44 48 00 48 44 44 44 48 44 44 48 44 44 44 47 44 48 44 48 44 44 44 00 00 47 44 47 48 48 44 47 48 00 44 00 47 47 47 00 48 00 47 44 00 48 44 48 44 48 48 44 00 48 44 44 44 00 44 44 00 48 00 00 44 44 48 48 44 48 48 47 48 00 00 47 44 48 47 47 47 48 00 48 44 47 44 47 48 48 48 44 44 00 44 44 48 48 48 47 48 00 47 44 44 48 48 44 48 44 44 44 44 48 44 48 44 48 48 44 48 44 48 48 48 44 00 00 00 44 44 48 48 44 44 48 48 00 47 00 48 48 47 00 44 48 44 00 47 44 48 44 48 44 44 48 00 44 48 00 48 48 00 48 44 48 48 00 00 48 00 48 47 44 48 44 47 44 47 44 48 47 48 48 48 44 48 44 44 48 00 44 48 44 47 48 44 44 00 44 44 44 00 00 48 44 44 00 47 00 44 48 44 44 00 44 44 48 44 44 48 47 48 48 47 44 44 44 48 44 44 48 44 44 48 48 48 48 44 44 48 48 44 48 44 48 48 48 44 44 48 44 44 48 48 44 48 48 47 48 44 48 44 44 44 44 47 44 44 47 48 48 48 00 00 44 48 00 44 48 44 00 48 44 47 00 47 44 48 44 48 47 44 48 44 48 48 44 47 44 44 00 44 00 00 48 48 48 44 44 48 44 48 47 44 47 00 48 44 48 47 44 48 48 48 48 47 44 44 47 44 44 48 48 47 00 44 00 48 44 48 48 00 47 48 48 48 48 48 44 47 48 48 44 48 44 47 48 44 48 48 44 44 44 48 48 44 44 48 44 00 00 48 00 48 48 48 44 48 44 47 47 44 44 00 48 48 47 47 47 48 48 44 48 00 48 48 44 47 48 44 48 44 44 00 00 00 48 47 00 48 47 48 47 00 48 44 48 48 44 44 48 48 48 00 48 00 44 47 00 44 00 00 44 48 48 48 47 48 00 44 48 44 48 47 44 00 44 48 00 48 44 47 47 48 00 44 48 44 47 47 48 48 44 44 00 44 48 48 48 48 48 48
*/
