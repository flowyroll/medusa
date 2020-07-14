.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14b36, %r8
nop
nop
add %r14, %r14
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
cmp $5740, %r11
lea addresses_A_ht+0x87d8, %rsi
lea addresses_WC_ht+0x1c02e, %rdi
nop
nop
nop
nop
xor $24591, %r12
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0xecc4, %rcx
nop
nop
mfence
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
cmp $21288, %rbx
lea addresses_D_ht+0x13e64, %r8
nop
nop
nop
xor %r11, %r11
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
xor $25826, %rbx
lea addresses_WC_ht+0x13184, %r11
nop
nop
nop
nop
nop
cmp $42092, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
cmp $52953, %r8
lea addresses_WT_ht+0x1e00c, %rsi
lea addresses_normal_ht+0x1da59, %rdi
clflush (%rsi)
and $25567, %rbx
mov $23, %rcx
rep movsq
nop
nop
nop
nop
cmp $64494, %rsi
lea addresses_D_ht+0x8644, %rsi
lea addresses_WC_ht+0x2584, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $105, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1956c, %rbx
sub $25119, %r11
movb $0x61, (%rbx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xe304, %rsi
lea addresses_WT_ht+0x1a644, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $81, %rcx
rep movsb
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1c084, %rbx
nop
nop
cmp %rdi, %rdi
mov (%rbx), %r12w
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x9e04, %rsi
lea addresses_UC_ht+0xef44, %rdi
nop
nop
nop
cmp $16949, %r14
mov $48, %rcx
rep movsq
nop
nop
and $25750, %rdi
lea addresses_A_ht+0x6c04, %r11
nop
nop
nop
nop
nop
and $9077, %r12
mov (%r11), %rcx
sub $10426, %rbx
lea addresses_D_ht+0x1d204, %r12
nop
add $57489, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r14
inc %rdi
lea addresses_UC_ht+0x1b0ac, %rsi
lea addresses_UC_ht+0x12644, %rdi
nop
nop
sub %r12, %r12
mov $60, %rcx
rep movsq
nop
nop
nop
nop
nop
add $11737, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x18644, %r8
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r8)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_D+0x1b7bc, %r8
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
dec %r8

// Store
lea addresses_D+0x1da44, %rdx
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rdx)
nop
sub $50098, %r8

// Store
lea addresses_D+0xaf44, %rcx
nop
and $1195, %r8
movw $0x5152, (%rcx)
nop
sub $3664, %r13

// Store
lea addresses_normal+0xdb34, %r13
nop
nop
nop
nop
nop
xor $43031, %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_normal+0x3a44, %rdx
nop
xor $41382, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rdx)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x13444, %r13
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r13)
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0x8644, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'46': 507, '00': 20443, '49': 7, '44': 872}
00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 46 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 46 00 00 00 00 00 00 44 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
