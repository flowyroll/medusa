.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13480, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
xor $40540, %r14
lea addresses_normal_ht+0x10700, %rsi
lea addresses_WT_ht+0xe880, %rdi
add %r12, %r12
mov $68, %rcx
rep movsq
nop
dec %r15
lea addresses_WT_ht+0x1afe0, %r12
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%r12)
nop
dec %r12
lea addresses_D_ht+0xd700, %rsi
lea addresses_WC_ht+0x12a0, %rdi
nop
dec %r13
mov $11, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_D_ht+0xcdc0, %rsi
lea addresses_A_ht+0x1c180, %rdi
nop
nop
nop
nop
nop
add $21439, %r15
mov $9, %rcx
rep movsw
cmp %r12, %r12
lea addresses_normal_ht+0x10780, %rsi
lea addresses_WC_ht+0x6f80, %rdi
clflush (%rdi)
nop
nop
cmp %r9, %r9
mov $96, %rcx
rep movsl
nop
and $15924, %r9
lea addresses_UC_ht+0x8bcc, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rsi)
lfence
lea addresses_WC_ht+0x1030, %r12
nop
nop
cmp $65525, %rcx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
cmp $51737, %r12
lea addresses_UC_ht+0x9be4, %r9
nop
inc %r15
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x28b0, %rsi
lea addresses_D_ht+0xc080, %rdi
nop
nop
nop
nop
and $30679, %r14
mov $7, %rcx
rep movsl
nop
nop
and $64439, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x6800, %rdi
nop
nop
nop
and $59410, %rdx
mov (%rdi), %r14d
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x17b10, %rdx
cmp %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdx)
nop
nop
cmp %r8, %r8

// Store
mov $0xe189d0000000480, %rax
nop
nop
nop
nop
xor $29269, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
add $34300, %r12

// REPMOV
lea addresses_US+0xd080, %rsi
lea addresses_US+0x1ce80, %rdi
sub %rax, %rax
mov $45, %rcx
rep movsb

// Exception!!!
nop
nop
mov (0), %rcx
and $25425, %rax

// Faulty Load
lea addresses_US+0x1a880, %r11
nop
sub %rcx, %rcx
mov (%r11), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'00': 76}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
