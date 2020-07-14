.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0x16dfe, %rax
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_US+0xc102, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor %r12, %r12
movb $0x51, (%rdx)
cmp $21530, %rdx

// Store
mov $0x5e7768000000029e, %r12
nop
nop
and %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x5fe, %rax
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WT+0x16dfe, %rax
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rax)
nop
sub $3243, %r11

// Store
lea addresses_A+0x44be, %rsi
nop
nop
nop
nop
nop
sub $51482, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rsi)
sub %rax, %rax

// Faulty Load
lea addresses_WT+0x16dfe, %rdx
nop
nop
nop
add $31685, %r14
vmovaps (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 2, '51': 26}
51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
