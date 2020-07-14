.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1956c, %rsi
lea addresses_A_ht+0x73bc, %rdi
nop
xor $1506, %r8
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x10fbc, %rsi
lea addresses_WC_ht+0x170fc, %rdi
nop
dec %rdx
mov $78, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x94bc, %r15
xor %rbx, %rbx
mov (%r15), %edi
cmp %r15, %r15
lea addresses_normal_ht+0x2f3c, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%rdx)
nop
sub $41765, %r15
lea addresses_D_ht+0x5fec, %rcx
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x103bc, %rcx
nop
nop
add $34305, %r8
movw $0x6162, (%rcx)
sub $3761, %rdi
lea addresses_normal_ht+0xe09c, %rsi
nop
nop
nop
nop
and $41223, %rdx
movb $0x61, (%rsi)
sub $8803, %rsi
lea addresses_D_ht+0x1b5e5, %rbx
nop
nop
inc %r8
mov (%rbx), %rdi
cmp $20594, %rcx
lea addresses_normal_ht+0x1cdbc, %rsi
lea addresses_D_ht+0x8f1c, %rdi
nop
nop
cmp %r9, %r9
mov $105, %rcx
rep movsb
xor %rdi, %rdi
lea addresses_WC_ht+0x1bac, %rsi
lea addresses_WT_ht+0x17bc, %rdi
nop
and %r8, %r8
mov $55, %rcx
rep movsb
nop
nop
nop
and $26385, %r8
lea addresses_D_ht+0x188bc, %rsi
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x70dc, %rsi
lea addresses_normal_ht+0x14bc, %rdi
nop
nop
nop
nop
inc %rdx
mov $0, %rcx
rep movsl
sub %r9, %r9
lea addresses_UC_ht+0x559c, %rsi
lea addresses_A_ht+0xf4bc, %rdi
nop
nop
sub %r15, %r15
mov $25, %rcx
rep movsl
nop
cmp $437, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x4fba660000000a94, %rcx
nop
nop
nop
nop
nop
xor $17560, %r14
movl $0x51525354, (%rcx)
and $33231, %r10

// Store
lea addresses_UC+0x1c126, %rcx
clflush (%rcx)
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rcx)
nop
xor %rsi, %rsi

// Load
lea addresses_D+0x1f6bc, %r11
nop
cmp $58616, %r10
movb (%r11), %dl
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0xffbc, %rsi
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%rsi)
xor %rdx, %rdx

// Store
lea addresses_A+0x11e88, %r11
nop
nop
nop
nop
nop
inc %r14
movb $0x51, (%r11)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x7fbc, %r14
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0xfbc, %rcx
and $49945, %r11
movaps (%rcx), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'08': 5, '47': 9, '46': 17700, '00': 3873, '6c': 1, 'b2': 1, '44': 240}
00 6c 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 00 00 46 46 46 46 00 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 00 46 46 00 46 00 46 44 00 46 46 46 46 46 46 00 46 46 46 46 44 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 46 46 00 46 46 46 46 00 46 00 46 46 46 46 00 46 46 00 46 00 46 46 00 46 00 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 00 00 46 46 00 44 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 00 46 46 46 46 46 46 46 46 44 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 00 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 00 46 46 46 46 46 00 00 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 44 44 46 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 00 00 46 00 46 46 46 46 00 00 00 00 46 46 46 46 46 00 46 00 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 44 00 46 46 46 46 00 46 46 46 46 46 00 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 44 46 46 00 46 46 46 00 46 00 00 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 44 46 46 46 46 46 00 00 46 00 46 46 00 00 00 46 00 46 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 44 46 46 46
*/
