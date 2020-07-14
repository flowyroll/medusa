.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12883, %r14
nop
xor %r12, %r12
movb (%r14), %bl
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x11ab, %rbx
nop
xor $51459, %r9
mov (%rbx), %rcx
inc %rcx
lea addresses_UC_ht+0x3183, %r14
nop
nop
nop
nop
nop
xor $35391, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
cmp $53631, %rdi
lea addresses_WC_ht+0x1e983, %r15
add %r9, %r9
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x6c83, %r9
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%r9)
nop
nop
cmp $46071, %r12
lea addresses_normal_ht+0x12983, %r15
cmp $57521, %r9
movb $0x61, (%r15)
nop
nop
nop
nop
nop
and $63660, %rdi
lea addresses_UC_ht+0x13503, %r9
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r9)
add $43619, %rbx
lea addresses_UC_ht+0x5a1e, %rcx
sub $24139, %r9
movw $0x6162, (%rcx)
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x17983, %rsi
lea addresses_WC_ht+0x13583, %rdi
nop
nop
add %r15, %r15
mov $62, %rcx
rep movsb
nop
nop
add $32967, %r12
lea addresses_A_ht+0x479b, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
xor %r12, %r12
lea addresses_WT_ht+0xa1a3, %r12
inc %rsi
mov (%r12), %bx
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0xd383, %r14
nop
nop
nop
xor %rsi, %rsi
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1bd0b, %rsi
lea addresses_A_ht+0x1634c, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $29344, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x19b37, %r14
nop
nop
and $58871, %r9
movb $0x51, (%r14)
nop
dec %rbp

// Load
lea addresses_PSE+0x1c983, %r9
clflush (%r9)
nop
nop
xor $3181, %r11
vmovaps (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0xe3a3, %rsi
nop
nop
nop
nop
nop
and $7003, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_US+0xe6bb, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $43561, %rbp
movw $0x5152, (%r9)
add %r9, %r9

// Store
mov $0x157, %r13
nop
nop
cmp $49611, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
nop
nop
cmp $49763, %r14

// Faulty Load
lea addresses_PSE+0x1c983, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'33': 19012}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
