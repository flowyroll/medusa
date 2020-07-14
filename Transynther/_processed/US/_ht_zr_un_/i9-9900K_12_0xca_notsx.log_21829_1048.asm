.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1059, %r10
nop
nop
nop
nop
and $47075, %rbp
mov (%r10), %r12w
inc %rdx
lea addresses_WC_ht+0x1591, %r15
nop
nop
and $46712, %r13
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1b659, %rdx
nop
nop
nop
nop
cmp %r15, %r15
movb (%rdx), %r12b
nop
nop
and $58875, %r12
lea addresses_WT_ht+0x1bad9, %rsi
lea addresses_UC_ht+0x555, %rdi
clflush (%rsi)
add %r10, %r10
mov $52, %rcx
rep movsw
nop
nop
nop
dec %rdx
lea addresses_D_ht+0xc9d9, %rcx
nop
nop
nop
sub $33480, %rsi
movb (%rcx), %r13b
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x15c99, %rsi
lea addresses_WC_ht+0x1b9b9, %rdi
nop
sub %r13, %r13
mov $94, %rcx
rep movsq
cmp $37929, %rbp
lea addresses_D_ht+0x10459, %rsi
lea addresses_A_ht+0x4159, %rdi
nop
nop
add %r15, %r15
mov $124, %rcx
rep movsq
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x2959, %rsi
lea addresses_D_ht+0x4a79, %rdi
clflush (%rsi)
nop
xor %rbp, %rbp
mov $108, %rcx
rep movsq
nop
nop
nop
add $42699, %r15
lea addresses_UC_ht+0x4159, %r13
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r13)
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x18e71, %rcx
nop
nop
inc %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor $20854, %rdx
lea addresses_A_ht+0x85ce, %rdi
inc %r15
mov (%rdi), %r12w
nop
nop
add %r10, %r10
lea addresses_normal_ht+0xc2d9, %r13
nop
nop
nop
nop
nop
inc %rdx
movb $0x61, (%r13)
nop
inc %rbp
lea addresses_A_ht+0xb470, %rsi
lea addresses_UC_ht+0x3059, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $16, %rcx
rep movsq
and $20342, %rdi
lea addresses_WT_ht+0x5d89, %rsi
lea addresses_UC_ht+0x1d0a9, %rdi
nop
nop
xor %rdx, %rdx
mov $82, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_normal_ht+0x15a3f, %rdx
xor $40496, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rdx)
nop
sub $38609, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_WT+0x15259, %r13
nop
nop
nop
nop
nop
sub $64000, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0x1e459, %r9
xor %r12, %r12
movl $0x51525354, (%r9)

// Exception!!!
nop
mov (0), %r8
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x101d9, %r11
add $17455, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
sub $6630, %rbx

// Store
lea addresses_normal+0x1f859, %r11
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x13859, %rcx
nop
nop
inc %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor $37825, %r9

// Faulty Load
lea addresses_US+0x8859, %r12
xor %r13, %r13
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'49': 7199, '00': 12956, '46': 7, '45': 1665, '08': 2}
45 00 00 49 45 49 00 49 00 00 45 49 00 49 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 49 49 49 00 00 49 49 00 00 45 49 49 00 49 00 49 49 49 45 45 45 49 49 00 49 45 00 49 00 49 00 49 45 00 00 00 00 00 00 49 49 00 00 49 00 49 49 00 00 00 45 00 00 00 49 45 00 00 49 00 00 00 49 00 49 00 49 00 00 49 49 00 00 00 00 00 49 00 49 49 00 45 00 00 49 45 45 49 00 00 00 00 49 00 49 45 45 00 00 00 49 00 00 49 49 00 00 45 00 00 00 00 49 45 00 49 49 00 00 00 49 49 00 45 49 00 00 49 49 00 49 00 00 00 49 00 00 00 49 00 00 49 45 00 00 49 00 00 00 49 45 00 49 00 00 00 45 00 49 45 45 00 45 00 49 00 49 49 49 45 49 49 49 00 00 49 00 00 00 00 49 49 49 00 49 00 45 45 00 49 00 00 00 49 45 45 45 00 00 00 00 49 00 00 49 45 00 49 49 00 00 00 00 00 00 45 49 00 00 49 00 49 49 00 49 49 49 00 00 00 49 00 00 49 00 45 00 49 49 49 00 00 00 49 00 45 45 49 00 00 00 49 00 00 00 45 45 49 00 00 00 49 00 00 00 49 49 00 00 49 00 49 49 49 00 49 00 49 46 00 49 49 49 00 45 00 00 49 45 00 00 00 49 45 00 00 00 00 00 00 00 49 49 00 49 00 45 00 49 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 49 00 00 00 00 00 00 49 00 49 49 49 00 49 49 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 49 49 00 49 00 49 49 49 45 49 00 00 45 49 00 00 49 00 49 49 49 00 00 00 00 00 00 49 00 49 00 49 00 00 49 49 00 49 49 49 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 45 49 00 45 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 45 49 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 49 00 49 49 00 00 00 00 49 00 49 00 00 49 45 00 49 00 49 00 00 45 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 45 00 45 00 00 49 45 00 00 00 49 49 00 00 45 00 49 00 00 00 00 00 00 00 49 45 45 00 49 00 00 45 00 49 00 49 49 49 00 00 00 49 00 49 49 49 00 00 45 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 49 45 49 49 00 00 00 00 00 45 49 00 00 49 49 00 45 49 00 00 00 49 00 49 00 49 49 00 49 00 45 00 45 00 00 00 49 00 00 00 49 00 00 00 49 49 00 00 00 00 49 00 49 00 00 49 49 00 00 49 49 49 00 49 49 49 00 00 45 00 00 49 45 00 49 49 00 49 00 00 00 00 49 00 49 00 49 49 49 00 00 45 00 49 00 49 00 00 49 00 49 00 00 49 00 00 00 49 45 00 00 49 49 00 00 49 45 00 00 49 49 00 00 49 49 45 00 00 49 49 00 00 49 00 49 49 45 00 00 49 00 49 49 49 00 00 45 00 00 00 00 00 49 49 49 00 00 49 49 00 00 45 00 45 00 00 49 49 49 45 49 00 49 00 00 00 00 00 00 49 49 00 49 00 00 49 49 00 00 00 00 00 49 00 00 45 49 00 00 49 00 49 00 49 00 00 00 00 00 49 49 49 00 49 49 00 49 00 49 00 00 00 00 49 49 45 00 49 00 00 00 49 00 00 00 00 00 49 00 49 00 00 00 45 00 00 00 49 49 45 00 49 00 00 00 00 00 49 49 00 00 49 49 00 00 49 00 49 49 00 00 00 49 49 00 00 00 49 00 49 49 00 49 00 00 00 49 00 00 49 00 49 00 00 00 00 00 49 00 49 45 00 00 00 00 00 49 45 00 49 00 00 00 00 00 49 00 49 00 00 00 00 49 00 49 00 00 00 00 00 49 49 00 00 49 49 00 00 00 00 00 49 00 49 49 49 49 00 00
*/
