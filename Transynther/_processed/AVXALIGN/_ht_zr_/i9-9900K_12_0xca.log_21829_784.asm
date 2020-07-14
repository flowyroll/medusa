.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1115d, %r10
nop
nop
nop
nop
add $12886, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%r10)
nop
cmp $29020, %rbp
lea addresses_D_ht+0x765d, %r13
nop
nop
nop
nop
sub $10639, %r11
movw $0x6162, (%r13)
nop
nop
add $33047, %r12
lea addresses_D_ht+0x1c2dd, %r13
clflush (%r13)
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x1775d, %rsi
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
and $31431, %r9
lea addresses_normal_ht+0x10e7d, %rsi
lea addresses_WC_ht+0x125d, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $121, %rcx
rep movsw
nop
nop
nop
nop
xor $7029, %rbp
lea addresses_UC_ht+0x12fdd, %r10
nop
nop
nop
nop
inc %r11
mov (%r10), %di
nop
and %r12, %r12
lea addresses_A_ht+0x1519d, %rsi
lea addresses_A_ht+0x1e2dd, %rdi
nop
nop
and %r10, %r10
mov $68, %rcx
rep movsq
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xbd5d, %rdi
and %rbp, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_normal+0x1eedd, %r8
cmp $50296, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x1d9be, %rbp
nop
nop
nop
and $49024, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbp)
nop
cmp %rcx, %rcx

// Store
lea addresses_PSE+0xfdd, %r8
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add $47602, %r8

// Load
lea addresses_UC+0x91dd, %rsi
nop
nop
nop
and %r11, %r11
mov (%rsi), %ebp
nop
sub %r11, %r11

// Store
lea addresses_PSE+0xb089, %rcx
nop
nop
dec %rbp
movl $0x51525354, (%rcx)
and %r9, %r9

// Store
lea addresses_PSE+0x64dd, %r11
inc %r9
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
xor $3444, %r11

// Faulty Load
mov $0x6dd, %rsi
nop
xor %rcx, %rcx
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_P', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'44': 3890, '45': 17932, '00': 7}
45 45 45 44 44 45 44 45 45 45 45 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 44 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 45 44 44 45 45 45 44 45 45 45 45 45 44 44 45 45 45 45 45 44 45 44 45 44 45 45 45 44 45 44 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 44 45 44 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 44 44 44 45 45 44 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 44 44 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 44 45 44 45 44 45 45 45 44 44 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 44 45 45 44 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 44 44 45 45 45 45 45 45 44 45 45 44 44 44 44 45 45 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 44 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 44 44 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 44 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 44 45 45 44 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 45 44 45 45 44 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 45 44 45 45 44 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 44 45 45 45 44 45 45 44 45 45 45 45 44 44 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 44 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45
*/
