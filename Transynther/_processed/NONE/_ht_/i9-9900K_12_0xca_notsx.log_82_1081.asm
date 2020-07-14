.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xadcd, %r15
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %r15
vmovaps %ymm6, (%r15)
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1af9f, %r15
dec %rsi
movb $0x61, (%r15)
nop
nop
dec %rdi
lea addresses_WC_ht+0x688d, %rdx
nop
nop
nop
nop
add %r11, %r11
movb $0x61, (%rdx)
nop
xor $5087, %rdi
lea addresses_A_ht+0x19ead, %rsi
lea addresses_UC_ht+0x48ad, %rdi
nop
nop
cmp $53976, %r12
mov $51, %rcx
rep movsb
sub $26728, %rsi
lea addresses_normal_ht+0x5dcd, %rsi
lea addresses_A_ht+0xb25b, %rdi
nop
nop
nop
dec %r11
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $25987, %rdx
lea addresses_UC_ht+0x14bb3, %r15
nop
nop
nop
nop
cmp $27860, %r11
movl $0x61626364, (%r15)
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x152cd, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
add %r11, %r11
lea addresses_WT_ht+0x1c565, %rsi
nop
xor $19404, %r8
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
xor $46329, %rdx
lea addresses_WC_ht+0xe5cd, %rdi
add %rcx, %rcx
mov (%rdi), %r8d
nop
xor %r8, %r8
lea addresses_WT_ht+0x3cd, %r12
nop
dec %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add $53229, %rcx
lea addresses_A_ht+0x61ed, %rsi
lea addresses_D_ht+0x17e6d, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $81, %rcx
rep movsl
cmp $58714, %rcx
lea addresses_UC_ht+0xbccd, %r12
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x4ced, %rsi
lea addresses_WC_ht+0xbfcd, %rdi
nop
inc %r15
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x12bcd, %r11
nop
nop
nop
nop
nop
cmp $55233, %rsi
movw $0x6162, (%r11)
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_US+0x1922d, %rax
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movaps %xmm7, (%rax)
nop
nop
nop
nop
nop
add $4135, %rax

// Faulty Load
lea addresses_A+0xfdcd, %rdx
nop
nop
nop
nop
inc %r12
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'49': 3, '45': 24, '44': 55}
44 45 44 44 45 44 45 44 44 45 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 45 44 45 44 44 45 44 45 45 44 44 44 45 44 45 44 44 44 45 45 45 44 45 44 44 44 44 44 45 44 45 44 44 44 45 45 45 44 44 49 45 44 49 44 44 49 44 44 44 44 44
*/
