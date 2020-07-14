.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rdi
push %rsi
lea addresses_UC_ht+0x19bda, %rdi
nop
add %r11, %r11
mov (%rdi), %r12
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
mov $0x8da, %rcx
cmp %r11, %r11
movb $0x51, (%rcx)
nop
nop
nop
nop
and $39894, %r9

// Load
lea addresses_WC+0xedda, %rsi
nop
nop
nop
nop
cmp %r15, %r15
mov (%rsi), %rax
nop
nop
add $49148, %r12

// Faulty Load
lea addresses_D+0xbbda, %rcx
nop
sub $51918, %r15
vmovntdqa (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'60': 12, '46': 11}
60 60 46 46 60 46 46 46 60 46 46 60 60 46 46 60 46 60 60 60 60 60 46
*/
