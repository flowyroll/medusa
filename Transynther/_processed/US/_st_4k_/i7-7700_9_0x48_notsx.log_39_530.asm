.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x9370, %r12
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%r12), %r13w
nop
and $61042, %rdi
lea addresses_WT_ht+0x10f72, %rsi
lea addresses_normal_ht+0x8932, %rdi
nop
nop
nop
nop
dec %rax
mov $31, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xe932, %rax
nop
nop
nop
sub $15154, %rcx
movw $0x6162, (%rax)
nop
cmp $8749, %rsi
lea addresses_D_ht+0x8a32, %rsi
lea addresses_WC_ht+0x15e84, %rdi
add %rdx, %rdx
mov $120, %rcx
rep movsw
dec %r12
lea addresses_WC_ht+0xd682, %rsi
lea addresses_WT_ht+0x17f32, %rdi
nop
nop
and $10025, %r12
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x17732, %rsi
nop
nop
sub $34729, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
dec %r12
lea addresses_D_ht+0x1d9ea, %rsi
lea addresses_normal_ht+0x1bb32, %rdi
nop
cmp $28276, %r12
mov $3, %rcx
rep movsw
nop
nop
nop
and $41830, %r13
lea addresses_D_ht+0x162f2, %rsi
nop
nop
nop
nop
sub $16196, %r12
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x15732, %r8
nop
nop
nop
nop
cmp $38055, %r12
mov (%r8), %r13w
nop
nop
add $7865, %rcx
lea addresses_WC_ht+0x19b12, %r12
nop
nop
nop
nop
add $16448, %rdx
mov (%r12), %r8w
nop
nop
dec %rdx
lea addresses_A_ht+0x13532, %rcx
nop
nop
add %r12, %r12
movb (%rcx), %r13b
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi

// Store
lea addresses_A+0xf732, %r11
nop
nop
lfence
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
add $30248, %r12

// Store
lea addresses_A+0x2c32, %r10
nop
nop
nop
nop
add $6612, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovntdq %ymm0, (%r10)
nop
and %rcx, %rcx

// Load
lea addresses_US+0x12372, %rcx
clflush (%rcx)
nop
nop
nop
and $18945, %r15
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r12
cmp $28943, %r10

// Load
lea addresses_UC+0x13a12, %r12
nop
nop
nop
nop
nop
and $14762, %r10
mov (%r12), %r11
nop
and %rdi, %rdi

// Store
mov $0x5d93e10000000732, %r12
nop
nop
add $15445, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
cmp $51709, %r9

// Faulty Load
lea addresses_US+0xd732, %r11
nop
nop
nop
nop
inc %rdi
mov (%r11), %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 7}}
{'58': 39}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
