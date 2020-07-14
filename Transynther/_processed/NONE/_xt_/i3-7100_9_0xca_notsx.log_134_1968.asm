.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x128fe, %r12
add $48033, %rdi
mov (%r12), %ebp
xor $4109, %r12
lea addresses_normal_ht+0xbd54, %r10
nop
sub %r11, %r11
movw $0x6162, (%r10)
mfence
lea addresses_A_ht+0x130fe, %rsi
lea addresses_D_ht+0x44fe, %rdi
and $22467, %rbp
mov $49, %rcx
rep movsl
nop
nop
sub $63042, %rcx
lea addresses_WC_ht+0x3da6, %rsi
lea addresses_UC_ht+0xb590, %rdi
nop
nop
nop
and $46575, %r8
mov $64, %rcx
rep movsb
nop
nop
nop
xor $28735, %rbp
lea addresses_A_ht+0x48fe, %rsi
clflush (%rsi)
nop
nop
nop
inc %r11
movb (%rsi), %cl
and $33919, %r11
lea addresses_WC_ht+0xd8fe, %r8
nop
nop
xor $25904, %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1e0fe, %rbp
nop
nop
nop
nop
nop
add $22112, %r11
movw $0x6162, (%rbp)
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x74fe, %rsi
nop
and %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1d572, %r11
nop
nop
sub $53331, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
xor %r8, %r8
lea addresses_WT_ht+0x153fe, %rsi
lea addresses_WT_ht+0x14aa6, %rdi
nop
nop
nop
nop
and $60537, %r12
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x120fe, %r10
nop
nop
nop
nop
add %rsi, %rsi
mov (%r10), %r8
nop
sub %r10, %r10
lea addresses_D_ht+0x166fe, %rsi
lea addresses_UC_ht+0x1054c, %rdi
inc %rbp
mov $71, %rcx
rep movsw
nop
nop
cmp $21109, %rcx
lea addresses_normal_ht+0x15b7e, %rsi
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
xor $7418, %rdi
lea addresses_D_ht+0xc8fe, %rsi
lea addresses_A_ht+0x13afe, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r12
mov $45, %rcx
rep movsb
add $46934, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx

// Store
mov $0x2608600000000e7e, %r9
nop
nop
nop
nop
xor $33719, %r14
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
cmp $6613, %r9

// Store
lea addresses_UC+0x14fe, %r15
nop
nop
and %r9, %r9
movl $0x51525354, (%r15)
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_RW+0x118fe, %rcx
nop
nop
nop
nop
dec %r13
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': True, 'congruent': 9, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'32': 134}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
