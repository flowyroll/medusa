.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2033, %rsi
add $18063, %r11
movb $0x61, (%rsi)
nop
cmp $22831, %rdi
lea addresses_WC_ht+0x2a4b, %rsi
lea addresses_D_ht+0x1955b, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $23, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x6813, %r10
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%r10)
nop
and $51396, %r10
lea addresses_A_ht+0x7b13, %rsi
lea addresses_UC_ht+0x68d9, %rdi
add $21850, %r11
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $33923, %r11
lea addresses_A_ht+0x1051e, %rsi
lea addresses_WC_ht+0x1b513, %rdi
nop
add $26049, %r12
mov $59, %rcx
rep movsl
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x1413, %r12
nop
nop
nop
add $35594, %r10
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x8723, %r10
cmp $55661, %rsi
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdi
cmp %rdi, %rdi
lea addresses_A_ht+0x1e46b, %rsi
lea addresses_A_ht+0x9e13, %rdi
nop
nop
nop
cmp %r11, %r11
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $4039, %r15
lea addresses_D_ht+0x683, %r14
cmp $37174, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r14
movaps %xmm5, (%r14)
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x7d13, %r15
clflush (%r15)
nop
cmp $2609, %rdi
mov (%r15), %r10w
sub %r12, %r12
lea addresses_normal_ht+0x19813, %rcx
cmp $27522, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
nop
sub $15394, %rdi
lea addresses_UC_ht+0x1a413, %rsi
lea addresses_A_ht+0xbc7f, %rdi
xor $7563, %r12
mov $88, %rcx
rep movsl
nop
and $9383, %r14
lea addresses_normal_ht+0x753, %r12
nop
nop
cmp $12513, %rsi
movb (%r12), %r14b
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x8013, %r15
nop
nop
add $36361, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r15)
sub %r11, %r11
lea addresses_normal_ht+0xf513, %rsi
lea addresses_normal_ht+0x692b, %rdi
inc %r10
mov $66, %rcx
rep movsq
nop
nop
add $54074, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0x3200bc0000000513, %rcx
nop
nop
nop
xor $47700, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_US+0x17413, %rcx
nop
nop
nop
add %r8, %r8
movb $0x51, (%rcx)
nop
xor $59546, %r15

// Store
lea addresses_WT+0x1bab3, %rsi
nop
nop
and %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $35896, %rdi

// Store
lea addresses_US+0xeb13, %rcx
nop
xor %r8, %r8
movb $0x51, (%rcx)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x16c13, %rdi
nop
nop
nop
xor $56481, %r15
vmovaps (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'00': 71, '45': 58, '44': 67}
44 44 45 00 00 45 44 00 00 44 44 44 00 00 44 00 44 00 00 44 44 00 45 44 44 45 44 45 44 00 44 00 00 00 44 45 44 45 00 44 45 00 00 45 44 00 00 44 00 45 45 00 44 00 00 44 45 44 00 44 00 44 44 44 44 44 45 45 44 00 44 45 00 44 00 44 00 44 00 45 45 00 45 44 00 45 45 44 00 00 00 44 00 44 44 45 00 00 45 00 45 00 45 45 44 00 00 44 45 00 44 45 44 00 00 00 00 00 00 00 44 44 45 45 45 44 45 00 44 00 44 45 45 44 45 44 44 45 45 44 44 45 45 45 44 45 00 00 44 00 45 44 44 00 45 00 45 00 45 44 44 00 00 45 44 00 44 45 00 00 44 45 00 00 45 44 00 45 45 45 00 00 45 45 45 44 00 44 44 45 44 45 00 00 45 45
*/
