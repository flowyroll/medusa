.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_WC+0xd83b, %r8
clflush (%r8)
nop
nop
sub $21983, %rsi
movb $0x51, (%r8)
nop
nop
nop
dec %rbx

// Store
lea addresses_normal+0xc3d3, %rax
nop
nop
nop
nop
nop
cmp $54992, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
add %rax, %rax

// Store
mov $0x6f54b90000000673, %rsi
nop
nop
nop
nop
sub $65494, %r9
movw $0x5152, (%rsi)
nop
nop
and $60114, %rax

// Store
lea addresses_A+0xe7b3, %r10
nop
nop
nop
nop
and $46950, %r9
movw $0x5152, (%r10)

// Exception!!!
nop
mov (0), %rbx
nop
inc %r11

// Faulty Load
lea addresses_WT+0xbbd3, %r9
clflush (%r9)
nop
nop
nop
nop
add $20309, %r8
mov (%r9), %r11d
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'39': 7}
39 39 39 39 39 39 39
*/
