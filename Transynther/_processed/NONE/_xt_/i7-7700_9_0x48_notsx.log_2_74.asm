.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5647, %r13
nop
nop
nop
xor $11166, %r11
movw $0x6162, (%r13)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x4d6f, %rsi
lea addresses_WC_ht+0x5e07, %rdi
nop
nop
nop
nop
nop
and $14412, %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xb57b, %rcx
nop
xor $23755, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x6527, %rsi
nop
nop
inc %rbx
movw $0x5152, (%rsi)
add %r8, %r8

// REPMOV
lea addresses_normal+0x5e47, %rsi
lea addresses_PSE+0x1b247, %rdi
clflush (%rsi)
nop
nop
nop
sub $1074, %r11
mov $101, %rcx
rep movsw
nop
cmp $54074, %rdi

// Store
lea addresses_normal+0xe647, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_normal+0x11347, %r14
nop
nop
nop
nop
nop
xor $38442, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r14)
sub $22377, %r11

// Store
lea addresses_WT+0x13347, %rsi
nop
nop
cmp $62654, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x10c47, %rbx
nop
nop
sub %r14, %r14
movb $0x51, (%rbx)
nop
nop
nop
sub $3593, %rdx

// Store
mov $0x78d1ce0000000d47, %r14
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
xor $61758, %rbx

// Faulty Load
lea addresses_PSE+0x9647, %r14
nop
add $6896, %r8
mov (%r14), %dx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'33': 2}
33 33
*/
