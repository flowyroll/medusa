.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x17167, %rsi
lea addresses_UC_ht+0xb30f, %rdi
nop
nop
nop
nop
nop
cmp $27805, %r15
mov $28, %rcx
rep movsb
nop
inc %r8
lea addresses_D_ht+0x5b0f, %rsi
lea addresses_A_ht+0xfa8f, %rdi
nop
nop
nop
nop
add $61223, %r10
mov $17, %rcx
rep movsq
nop
nop
cmp $62545, %rcx
lea addresses_D_ht+0x1130f, %rdi
nop
nop
sub %rdx, %rdx
mov (%rdi), %r10w
dec %rdx
lea addresses_UC_ht+0x1290f, %rdx
nop
nop
nop
nop
sub $59053, %rcx
mov (%rdx), %di
nop
nop
inc %r8
lea addresses_A_ht+0x110f, %rdx
nop
nop
nop
nop
sub $22448, %rcx
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x39df, %rsi
lea addresses_A_ht+0x131cf, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $52, %rcx
rep movsq
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x7c0b, %rdx
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
nop
and $61707, %rcx
lea addresses_WC_ht+0xa30f, %rcx
nop
nop
inc %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rcx)
nop
add $28502, %rcx
lea addresses_UC_ht+0x28ef, %rsi
lea addresses_A_ht+0x1d4d5, %rdi
and %r11, %r11
mov $72, %rcx
rep movsb
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0xdbcf, %rdi
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rdi)
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xb1cf, %r9
sub $1291, %r12
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
and %r15, %r15

// REPMOV
lea addresses_PSE+0x704f, %rsi
lea addresses_PSE+0x1030f, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
and $32541, %r8

// Store
lea addresses_UC+0x12f0f, %r10
and $53443, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
sub $6831, %rcx

// Store
mov $0x1cb4850000000f33, %rsi
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
dec %rcx

// Store
lea addresses_US+0x5b53, %r15
nop
nop
dec %r9
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $13045, %r13

// Faulty Load
lea addresses_PSE+0x530f, %r12
clflush (%r12)
xor $58300, %r10
movb (%r12), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'33': 4}
33 33 33 33
*/
