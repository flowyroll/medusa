.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xff21, %rsi
lea addresses_normal_ht+0x17521, %rdi
nop
nop
nop
inc %r15
mov $101, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1d621, %r9
cmp %r15, %r15
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1e705, %rsi
lea addresses_D_ht+0x14121, %rdi
clflush (%rsi)
nop
and %r14, %r14
mov $116, %rcx
rep movsb
nop
nop
nop
nop
add $3598, %rsi
lea addresses_UC_ht+0x19da1, %rdi
nop
inc %rsi
movb (%rdi), %r9b
nop
add $10238, %rsi
lea addresses_D_ht+0xe745, %rsi
add $56962, %rcx
mov (%rsi), %r11d
nop
cmp %r14, %r14
lea addresses_normal_ht+0x169f1, %rsi
lea addresses_normal_ht+0xe21, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $24, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x15e61, %r9
clflush (%r9)
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xef61, %rsi
lea addresses_D_ht+0x1d121, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $13, %rcx
rep movsb
nop
nop
nop
xor $38888, %rdi
lea addresses_WT_ht+0x11121, %rsi
lea addresses_A_ht+0x8a21, %rdi
nop
nop
add %r15, %r15
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xb421, %rsi
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x16b01, %rsi
lea addresses_WT_ht+0x7d21, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $18, %rcx
rep movsb
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x2b21, %rsi
nop
nop
nop
add %rcx, %rcx
movb (%rsi), %r11b
nop
nop
nop
sub $24729, %r14
lea addresses_normal_ht+0xdda1, %r13
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
xor $15519, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xa921, %rdx
nop
nop
add $9717, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %r12
and %rdx, %rdx

// Store
lea addresses_RW+0x10f31, %r15
add $29478, %rsi
movb $0x51, (%r15)
nop
nop
nop
sub $27627, %r12

// Store
lea addresses_WC+0x7a21, %r8
nop
and $38173, %r12
movw $0x5152, (%r8)
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_A+0x14921, %rdx
nop
nop
nop
nop
add %r10, %r10
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'49': 4225, '00': 10969, '48': 6514, '44': 121}
00 00 00 48 00 48 00 48 00 49 00 49 00 00 48 00 48 00 48 00 48 00 49 00 00 49 00 49 00 48 00 48 00 48 00 48 00 49 00 00 48 00 00 48 00 48 49 00 00 48 00 49 00 49 00 00 48 00 49 00 00 49 00 49 00 48 00 48 00 49 00 00 48 00 48 00 49 00 49 00 48 00 48 00 48 00 49 00 00 48 00 48 00 48 00 49 00 00 48 00 00 48 48 49 49 00 48 00 49 00 49 44 00 48 00 48 00 48 00 00 48 00 48 00 00 49 48 00 00 49 00 49 00 00 48 48 00 49 00 48 00 48 00 00 48 00 00 48 00 48 49 00 49 00 49 00 00 00 48 48 00 48 00 48 00 48 00 00 49 00 49 48 00 00 00 48 48 00 49 00 48 00 48 00 49 49 00 48 00 48 00 49 00 00 49 00 48 00 48 00 49 00 48 00 49 00 48 00 48 48 00 49 00 49 00 48 00 48 00 49 49 00 49 00 48 00 49 00 49 00 48 00 00 49 00 49 44 48 00 00 48 00 00 49 00 49 00 48 00 00 49 00 49 00 00 48 49 00 48 00 00 00 48 48 00 49 00 00 48 48 00 49 00 49 48 00 48 00 49 00 48 00 48 49 00 49 00 49 00 00 00 48 48 49 49 00 48 00 48 00 49 49 00 49 00 48 00 49 00 49 00 00 48 00 00 48 48 00 00 49 00 48 00 48 00 49 00 49 00 44 00 48 00 48 00 48 00 49 00 48 00 48 48 00 49 00 00 48 48 00 00 48 00 49 00 48 00 49 00 49 00 49 49 00 00 48 48 00 49 00 48 48 00 49 00 49 00 48 00 48 48 00 49 00 49 00 48 48 48 00 49 00 48 00 48 48 00 00 49 48 00 49 00 00 49 00 48 00 48 00 49 00 00 48 00 48 00 48 49 49 44 00 48 00 48 00 49 49 00 49 00 48 00 00 49 00 49 00 48 00 00 00 00 48 48 00 48 00 48 49 00 00 48 48 00 48 00 48 48 00 49 00 49 00 48 48 00 49 00 48 00 48 00 49 49 00 48 00 48 00 49 00 49 48 00 00 48 48 00 48 00 00 48 00 48 00 49 00 49 00 48 00 48 00 49 49 00 00 48 49 49 00 00 48 00 48 49 00 48 00 48 48 00 49 00 49 00 49 00 00 00 48 48 00 49 00 49 00 00 49 00 49 00 48 00 48 00 48 49 00 00 48 48 00 49 49 00 00 48 48 48 49 00 49 00 49 48 00 48 00 00 00 48 00 48 49 00 49 00 00 48 48 48 00 49 00 48 00 00 48 00 49 00 48 00 00 48 48 00 49 49 00 49 49 00 00 49 49 00 00 48 00 48 00 48 00 49 48 48 00 00 00 48 48 00 49 00 00 48 00 48 00 48 00 49 44 48 48 00 49 00 49 00 49 48 49 00 48 00 48 00 00 48 00 49 00 49 00 49 00 00 00 00 48 00 48 00 48 00 49 00 48 48 00 48 00 49 00 48 00 00 48 00 48 00 00 48 00 48 49 49 00 49 00 48 00 48 48 00 48 00 49 00 49 00 48 00 48 00 48 00 48 48 00 49 00 49 00 00 00 48 00 48 48 00 49 00 49 00 49 00 48 48 00 49 00 00 48 00 48 48 00 49 44 00 48 00 49 00 48 48 00 49 00 49 00 00 48 48 00 00 49 00 00 48 00 48 48 00 48 00 49 00 49 00 49 49 00 48 00 49 49 00 48 00 48 00 00 48 00 48 00 48 00 49 44 00 49 00 48 00 00 48 00 49 00 49 00 48 00 49 00 49 48 00 48 00 48 00 48 00 00 49 00 00 00 48 00 49 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 49 00 48 00 48 00 49 00 00 48 00 48 00 49 00 49 00 00 00 48 00 48 49 00 48 00 48 48 00 48 00 48 48 00 49 00 49 00 48 00 00 49 48 00 49 00 49 00 48 48 00 48 00 49 00 49 00 00 48 00 48 48 48 00 49 44 00 48 00 49 48 48 00 49 49 00 00 48 00 00 49 00 00 49 00 48 00 00 00 48 00 48 00 49 49 00 48 00 48 00 49 00 49 00 00 49 00 49 00 48 00 49 00 48 00 00 00 48 00 48 00 49 00 48 00 49 00 00 49 00 49 00 00 48 00 00 48 48 00 49 00 49 00 48 48 00 49 00 48 00 48 48 00 49 00 49
*/
