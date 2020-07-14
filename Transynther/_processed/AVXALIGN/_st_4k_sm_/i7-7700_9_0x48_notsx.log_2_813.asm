.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rdi
lea addresses_UC_ht+0x3e87, %rbp
nop
xor %rdi, %rdi
movl $0x61626364, (%rbp)
and $32664, %r10
pop %rdi
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1b387, %rbp
dec %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
cmp %r15, %r15

// Store
mov $0x27835d0000000a87, %r11
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r11)
nop
nop
dec %rbx

// Store
lea addresses_UC+0x1b287, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $43326, %rsi
movw $0x5152, (%rdi)
sub %r11, %r11

// Store
mov $0x7abf480000000287, %rbx
nop
nop
xor $54724, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0xae87, %rsi
sub %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rsi)
nop
nop
xor $7418, %rbx

// Load
mov $0xfc7, %r15
clflush (%r15)
nop
add %rbp, %rbp
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
cmp $49336, %r15

// Faulty Load
mov $0x7abf480000000287, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdx), %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'58': 2}
58 58
*/
