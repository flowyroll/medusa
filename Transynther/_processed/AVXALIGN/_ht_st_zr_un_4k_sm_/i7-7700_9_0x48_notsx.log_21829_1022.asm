.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x126b2, %rsi
lea addresses_D_ht+0x16c72, %rdi
nop
nop
nop
mfence
mov $82, %rcx
rep movsq
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1e172, %rsi
lea addresses_D_ht+0xa9e0, %rdi
clflush (%rsi)
nop
nop
cmp $8023, %r14
mov $113, %rcx
rep movsw
nop
nop
nop
nop
and $26156, %rsi
lea addresses_D_ht+0x1a8f2, %r11
clflush (%r11)
nop
cmp $47669, %r12
mov (%r11), %r9w
nop
nop
nop
nop
nop
add $20255, %r12
lea addresses_WT_ht+0xaad2, %r9
nop
sub %r11, %r11
movl $0x61626364, (%r9)
nop
nop
nop
sub $22633, %r14
lea addresses_UC_ht+0xd272, %rsi
add $17946, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rsi)
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1d572, %r14
nop
inc %r15
movw $0x5152, (%r14)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_UC+0x5d72, %r9
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%r9)
nop
nop
xor %r8, %r8

// Load
lea addresses_UC+0x1c03e, %r8
nop
nop
sub $262, %rdx
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_PSE+0x1d572, %r9
nop
nop
xor %rdx, %rdx
vmovntdqa (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'4a': 2, 'd5': 2, '49': 323, '00': 15686, 'fc': 1, '38': 1, 'c2': 1, '60': 4730, 'c5': 1, '3b': 1, '17': 1, 'df': 1, '58': 1, '46': 1069, '81': 1, '73': 1, 'cd': 1, '05': 1, '1c': 1, 'aa': 1, 'f7': 1, '87': 1, '06': 1}
06 60 00 00 00 60 00 46 60 00 60 60 00 00 00 60 00 60 60 46 00 46 00 60 00 60 00 00 60 00 00 46 00 00 00 00 00 00 00 00 46 00 00 60 00 00 60 00 00 00 00 00 49 00 60 60 00 60 00 60 00 00 00 00 00 46 46 60 46 49 00 00 00 60 00 00 00 60 60 00 60 00 60 46 60 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 60 46 00 00 60 60 00 00 00 00 00 60 00 00 60 00 00 00 60 00 00 60 00 00 00 00 00 00 46 00 46 00 00 00 60 00 60 00 00 46 60 00 00 00 00 00 00 00 60 60 00 60 60 60 00 60 60 00 00 60 00 00 60 00 00 00 46 46 60 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 60 00 00 60 60 00 00 00 00 00 00 60 00 00 00 00 46 00 60 00 00 00 00 60 00 00 00 00 00 60 60 46 60 00 60 00 00 00 00 00 00 46 00 00 00 00 00 60 46 00 60 00 60 60 00 00 00 60 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 60 00 00 00 60 60 60 60 00 00 46 00 00 00 00 00 00 60 00 00 46 00 00 00 60 60 00 00 00 00 00 00 00 00 00 60 00 00 60 00 60 00 00 00 60 00 00 00 00 00 60 60 00 00 00 60 60 00 00 00 46 00 00 00 00 00 00 46 00 00 60 00 60 00 00 00 00 60 46 00 00 60 00 00 00 00 00 00 00 00 60 00 46 00 00 00 60 60 60 00 00 60 60 00 60 60 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 60 00 60 00 00 00 46 60 00 60 00 00 00 60 00 46 60 00 00 00 f7 00 00 60 00 00 00 60 00 00 60 00 00 00 60 00 00 00 00 60 00 60 00 00 46 00 60 00 60 00 60 00 60 00 60 00 60 60 60 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 60 60 00 00 60 00 00 00 00 00 60 00 60 60 60 00 60 00 00 00 00 46 60 46 60 00 60 00 60 00 60 00 60 00 60 46 00 00 46 60 00 60 00 60 00 60 00 00 00 00 00 00 46 60 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 60 00 00 00 46 00 46 60 00 00 60 00 00 00 00 00 60 00 60 00 46 00 46 00 60 00 00 00 00 00 00 00 60 00 00 60 00 00 00 46 00 00 60 00 60 00 46 00 00 00 60 60 00 60 00 00 00 00 00 00 60 00 00 00 00 00 00 46 46 60 00 00 00 00 60 46 00 00 00 60 00 00 00 00 00 00 00 00 60 00 00 60 46 00 00 00 00 00 46 60 60 60 00 00 60 00 00 00 00 00 60 00 49 46 00 60 60 00 00 00 00 00 00 00 60 60 00 00 00 00 46 60 60 00 60 60 00 00 00 00 00 00 60 00 46 60 60 60 00 00 00 60 00 00 00 60 00 00 00 00 00 46 00 00 00 00 60 60 00 00 00 00 46 60 00 60 00 60 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 60 60 00 00 60 00 00 60 00 00 00 00 00 60 60 00 00 00 00 00 00 00 60 00 00 00 60 00 00 60 60 00 00 00 60 00 49 46 00 00 00 00 00 00 00 00 60 00 00 60 60 60 00 00 60 60 00 00 00 00 00 00 00 00 60 00 00 00 60 00 60 00 00 60 00 60 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 60 60 00 00 00 00 60 60 00 00 00 00 00 00 60 00 00 00 46 00 60 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 60 00 00 00 00 60 00 60 60 00 00 60 00 60 00 00 00 00 00 00 00 46 00 00 60 00 00 00 00 00 00 00 00 60 60 00 00 00 60 00 46 60 00 00 00 00 00 46 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 60 00 00 00 60 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 46 46 00 00 00 60 00 00 00 00 60 46 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
