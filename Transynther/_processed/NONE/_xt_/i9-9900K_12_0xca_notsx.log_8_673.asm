.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d424, %r14
nop
nop
nop
add %rdi, %rdi
mov (%r14), %r15w
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0xc10c, %rdx
nop
nop
nop
nop
add $28246, %r13
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
add $27841, %rdx
lea addresses_A_ht+0x11d54, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rdi), %r13
nop
xor $21156, %r12
lea addresses_WC_ht+0x6bc4, %rdi
nop
nop
nop
nop
and %r14, %r14
movb $0x61, (%rdi)
xor $14885, %r12
lea addresses_WC_ht+0x188bc, %rsi
lea addresses_UC_ht+0xb8d4, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $12194, %r13
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $51664, %rbx
lea addresses_UC_ht+0x18554, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
sub $45388, %r13
lea addresses_WC_ht+0x11d6d, %r14
nop
nop
inc %rdx
mov (%r14), %r15
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x3bd4, %r15
nop
nop
sub %r14, %r14
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xa3b, %r13
nop
nop
nop
nop
nop
and %r12, %r12
mov (%r13), %r14d
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xde54, %r15
nop
sub %r13, %r13
mov (%r15), %rsi
nop
and $58614, %rcx
lea addresses_normal_ht+0xbb54, %rbx
clflush (%rbx)
and $27938, %rsi
mov (%rbx), %r14
nop
nop
nop
nop
and $36659, %rsi
lea addresses_A_ht+0x19f54, %rsi
lea addresses_UC_ht+0x11b54, %rdi
clflush (%rdi)
and %r15, %r15
mov $30, %rcx
rep movsw
nop
sub $14425, %r15
lea addresses_WT_ht+0xd014, %r14
inc %rdx
mov (%r14), %r13d
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1066c, %rsi
lea addresses_D_ht+0xe5c, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $123, %rcx
rep movsb
nop
xor %r12, %r12
lea addresses_normal_ht+0xed54, %rbx
nop
nop
nop
nop
nop
add $2821, %rcx
movb (%rbx), %r15b
nop
nop
nop
nop
nop
xor $3249, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Load
lea addresses_US+0x16cf4, %r14
nop
add %rdx, %rdx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
cmp $3979, %r9

// Store
lea addresses_normal+0x11254, %r11
xor $60837, %rdi
movb $0x51, (%r11)
inc %r11

// Store
lea addresses_RW+0x26e4, %rdx
nop
nop
sub %r10, %r10
movl $0x51525354, (%rdx)
nop
nop
dec %r10

// Store
lea addresses_normal+0xc794, %r14
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
nop
nop
xor $5036, %r11

// Store
lea addresses_WT+0x2c4, %rdx
nop
nop
dec %rbp
movl $0x51525354, (%rdx)
and %rdx, %rdx

// Store
lea addresses_US+0x1154, %r14
cmp %rbp, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0x5964, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WC+0xad54, %rdi
add %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r14
nop
and $22072, %r11

// Store
mov $0x454, %rbp
nop
nop
nop
nop
and $38070, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
xor $14216, %r9

// Store
lea addresses_PSE+0xd8d4, %r10
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%r10)
nop
nop
nop
xor $60632, %r10

// Load
lea addresses_RW+0xcf4, %r9
nop
xor $56436, %r10
movb (%r9), %r11b
add $1308, %r14

// Faulty Load
lea addresses_D+0x4d54, %rdx
clflush (%rdx)
nop
cmp $1614, %rbp
movb (%rdx), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'36': 8}
36 36 36 36 36 36 36 36
*/
