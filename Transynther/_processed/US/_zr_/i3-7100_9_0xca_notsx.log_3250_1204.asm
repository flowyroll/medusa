.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xddb0, %r8
cmp %r9, %r9
movw $0x6162, (%r8)
nop
cmp $3224, %r9
lea addresses_A_ht+0xe630, %rax
nop
inc %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rax)
add %rdx, %rdx
lea addresses_WT_ht+0xc0b0, %rax
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
nop
nop
nop
cmp $47525, %r9
lea addresses_WC_ht+0x19930, %r9
nop
nop
nop
nop
add $30152, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x1b170, %r8
nop
nop
nop
nop
cmp $51162, %rbx
mov (%r8), %rdx
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0xaecc, %rbp
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rbp)
nop
and %r8, %r8
lea addresses_UC_ht+0x9050, %rbp
nop
nop
sub %r8, %r8
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x101c0, %rsi
lea addresses_WT_ht+0x11a8, %rdi
inc %r9
mov $8, %rcx
rep movsw
nop
nop
nop
nop
add $9261, %rax
lea addresses_normal_ht+0x530, %rsi
lea addresses_D_ht+0x145b0, %rdi
clflush (%rsi)
nop
nop
nop
sub %rdx, %rdx
mov $43, %rcx
rep movsb
dec %rsi
lea addresses_WC_ht+0xf730, %rsi
lea addresses_D_ht+0x7530, %rdi
sub $49202, %rdx
mov $76, %rcx
rep movsq
nop
add %rdx, %rdx
lea addresses_UC_ht+0x5b30, %r9
clflush (%r9)
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xaf90, %rbp
nop
nop
nop
nop
nop
add %r9, %r9
mov (%rbp), %rdx
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1ba30, %r15
nop
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
cmp $11754, %rcx

// Store
lea addresses_WC+0x1ce70, %rbx
nop
xor $44987, %r8
movl $0x51525354, (%rbx)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0xac50, %r8
nop
nop
nop
nop
nop
and $3557, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r8)
and %rbx, %rbx

// Store
lea addresses_UC+0x10330, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_D+0x9f30, %r8
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovntdq %ymm1, (%r8)
nop
nop
cmp %rbx, %rbx

// Store
mov $0x6fbd00000000f30, %rcx
nop
nop
nop
cmp $20058, %rbp
movb $0x51, (%rcx)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0x3730, %r8
nop
nop
nop
nop
and %rdx, %rdx
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 3250}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
