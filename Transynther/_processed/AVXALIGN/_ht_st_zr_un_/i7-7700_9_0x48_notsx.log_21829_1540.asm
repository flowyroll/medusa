.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rsi
lea addresses_WT_ht+0xe858, %r15
nop
nop
nop
nop
nop
xor $41887, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xb582, %rsi
clflush (%rsi)
nop
nop
dec %r8
movb $0x61, (%rsi)
xor %rsi, %rsi
lea addresses_D_ht+0xd9e2, %r15
nop
nop
nop
nop
add $11116, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x152a2, %r10
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r10), %r11b
nop
nop
sub $5898, %r10
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x10d32, %rdx
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor $15294, %rbp

// Store
lea addresses_D+0x1d2e2, %rbp
nop
nop
nop
nop
nop
xor $24747, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbp)
xor $49320, %r8

// Faulty Load
lea addresses_UC+0xd1e2, %rbp
clflush (%rbp)
nop
xor %rdx, %rdx
vmovaps (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'db': 2, 'bd': 1, '26': 1, '43': 1, 'b3': 1, '60': 18971, '77': 2, '3b': 2, '58': 1, '0b': 1, '1f': 1, '13': 2, 'a5': 1, '0f': 3, '17': 1, 'ce': 1, '97': 2, '08': 1, 'ef': 2, 'd9': 1, '7a': 1, 'b9': 1, 'ee': 1, '93': 1, '9f': 1, '37': 1, '57': 2, 'af': 2, '47': 3, '67': 2, 'ab': 1, '63': 1, '04': 1, '1b': 2, 'e3': 1, '87': 3, '27': 1, 'ec': 1, '74': 1, 'b4': 1, '83': 2, '78': 1, 'e7': 1, 'df': 1, 'ca': 1, 'cf': 2, '35': 1, 'bb': 3, '2f': 1, '03': 2, 'b7': 2, 'c7': 1, '5a': 2, 'f3': 1, '6f': 1, 'bf': 1, '53': 1, 'e8': 1, '5b': 1, '9d': 1, 'a3': 1, 'ff': 2, '8b': 1, '69': 1, '9b': 3, 'd7': 2, '06': 1, '4f': 1, 'c3': 3, '0a': 1, '00': 11, 'f5': 1, '7b': 1, 'cb': 2, '59': 140, 'eb': 2, 'fb': 3, '46': 2584, 'ea': 1, '33': 1, '98': 1, '96': 1, '2b': 4, '65': 1, '3f': 1, '6b': 2, '4b': 2, '8f': 1, '4d': 1}
06 59 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 60 60 46 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 60 60 60 46 60 46 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 46 cf 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 46 60 60 46 60 60 60 60 46 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 46 60 60 60 46 60 60 60 46 60 60 60 60 60 60 60 60 60 60 46 2b 60 46 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 46 60 46 60 60 46 60 46 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 60 87 60 60 60 60 46 60 60 60 60 60 60 60 60 60 46 46 60 60 60 60 60 46 60 46 60 60 60 60 60 60 46 60 46 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 46 e3 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 46 60 60 60 60 46 46 60 59 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 46 60 60 60 60 60 46 46 60 60 60 46 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 46 60 60 60 60 60 60 9b 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 59 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 46 60 46 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 46 60 60 46 60 46 46 60 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 59 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 46 00 60 60 60 60 60 60 60 46 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 46 60 60 46 60 60 60 60 60 60 60 60 46 60 60 60 46 46 60 60 60 60 af 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 46 46 60 60 60 46 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 46 60 60 60 46 60 60 46 60 60 60 60 60 46 60 60 60 46 60 60 60 46 60 59 46 60 60 60 60 60 46 60 60 60 60 60 46 46 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 60 60 60 46 46 46 60 60 60 60 60 60 46 60 60 46 46 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 60 46 46 60 59 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 c3 60 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 60 46 60 46 60 60 60 60 60 60 60 60 60 46
*/
